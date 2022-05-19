package sai.llsc

import sai.lang.llvm._
import sai.lang.llvm.IR._

import sai.structure.freer._
import Eff._
import Freer._
import Handlers._
import OpenUnion._
import State._

import lms.core._
import lms.core.Backend._
import lms.core.virtualize
import lms.macros.SourceContext
import lms.core.stub.{While => _, _}

import sai.lmsx._
import sai.lmsx.smt.SMTBool

import scala.collection.immutable.{List => StaticList, Map => StaticMap, Set => StaticSet}
import scala.collection.mutable.{Map => MutableMap, Set => MutableSet}

// Writing models of syscall/external functions is often painful and error-prone
// in a low-level language, and we don't want to maintain multiple version of those
// external/intrinsic functions with only slightly backend difference.
// Can we generate them from our Scala DSL?

@virtualize
trait GenExternal extends SymExeDefs {
  // TODO: sym_exit return type in C should be void
  def sym_exit[T: Manifest](ss: Rep[SS], args: Rep[List[Value]]): Rep[T] =
    "sym_exit".reflectWith[T](ss, args)

  // TODO: Utility functions
  // 1. object constructors, factories (e.g. new_stream, new_stat) 
  // Use the apply() method on classes as constructors/factories
  // <2022-05-12, David Deng> //
  def getString(ptr: Rep[Value], s: Rep[SS]): Rep[String] = "get_string".reflectWith[String](ptr, s)

  def llsc_assert[T: Manifest](ss: Rep[SS], args: Rep[List[Value]], k: (Rep[SS], Rep[Value]) => Rep[T]): Rep[T] = {
    val v = args(0)
    if (v.isConc) {
      // Note: we directly project the integer field of v, which is safe if
      // the source program is type checked against the C llsc_assert declaration.
      if (v.int == 0) sym_exit[T](ss, args)
      else k(ss, IntV(1, 32))
    } else {
      val ss1 = ss.addPC(v.toSMTBoolNeg)
      if (checkPC(ss1.pc)) sym_exit[T](ss1, args)
      else k(ss.addPC(v.toSMTBool), IntV(1, 32))
    }
  }

  def open[T: Manifest](ss: Rep[SS], fs: Rep[FS], args: Rep[List[Value]], k: (Rep[SS], Rep[FS], Rep[Value]) => Rep[T]): Rep[T] = {
    val ptr = args(0)
    val name: Rep[String] = getString(ptr, ss)
    val flags = args(1)
    /* TODO: handle different mode <2021-10-12, David Deng> */
    if (!fs.hasFile(name)) k(ss, fs, IntV(-1, 32))
    else {
      val fd: Rep[Fd] = fs.getFreshFd()
      val file = fs.files(name)
      fs.setStream(fd, Stream(file))
      k(ss, fs, IntV(fd, 32))
    }
  }

  def close[T: Manifest](fs: Rep[FS], args: Rep[List[Value]], k: (Rep[FS], Rep[Value]) => Rep[T]): Rep[T] = {
    val fd: Rep[Fd] = args(0).int.toInt
    if (!fs.hasStream(fd)) k(fs, IntV(-1, 32))
    else {
      val strm = fs.getStream(fd)
      val name = strm.file.name
      if (fs.hasFile(name)) {
        // remove the stream associated with fd, write content to the actual file if the file still exists.
        // TODO: implement update in MapOpsOpt <2022-04-21, David Deng> //
        fs.setFile(name, strm.file)
        fs.removeStream(fd)
      }
      k(fs, IntV(0, 32))
    }
  }

  def read[T: Manifest](ss: Rep[SS], fs: Rep[FS], args: Rep[List[Value]], k: (Rep[SS], Rep[FS], Rep[Value]) => Rep[T]): Rep[T] = {
    val fd: Rep[Int] = args(0).int.toInt
    val loc: Rep[Value] = args(1)
    val count: Rep[Int] = args(2).int.toInt
    if (!fs.hasStream(fd)) k(ss, fs, IntV(-1, 64))
    else {
      val strm = fs.getStream(fd)
      val content: Rep[List[Value]] = strm.read(count)
      // will update the cursor in strm
      // Thought: use a reference so that we don't have to set it back? 
      // But then we will have to manually make copies upon branches <2022-04-14, David Deng> //
      fs.setStream(fd, strm)
      val size = content.size
      val ss1 = ss.updateSeq(loc, content)
      k(ss1, fs, IntV(size, 64))
    }
  }

  def write[T: Manifest](ss: Rep[SS], fs: Rep[FS], args: Rep[List[Value]], k: (Rep[SS], Rep[FS], Rep[Value]) => Rep[T]): Rep[T] = {
    val fd: Rep[Int] = args(0).int.toInt // NOTE: .int => Rep[Long], .toInt => Rep[Int]
    val buf: Rep[Value] = args(1)
    val count: Rep[Int] = args(2).int.toInt
    val content: Rep[List[Value]] = ss.lookupSeq(buf, count)
    if (!fs.hasStream(fd)) k(ss, fs, IntV(-1, 64))
    else {
      val strm = fs.getStream(fd)
      val size = strm.write(content, count)
      fs.setStream(fd, strm)
      k(ss, fs, IntV(size, 64))
    }
  }

  def lseek[T: Manifest](fs: Rep[FS], args: Rep[List[Value]], k: (Rep[FS], Rep[Value]) => Rep[T]): Rep[T] = {
    val fd: Rep[Fd] = args(0).int.asRepOf[Fd]
    val o: Rep[Long] = args(1).int.asRepOf[Long]
    val w: Rep[Int] = args(2).int.toInt
    val pos: Rep[Long] = fs.seekFile(fd, o, w)
    k(fs, IntV(pos, 64))
  }

  def stat[T: Manifest](ss: Rep[SS], fs: Rep[FS], args: Rep[List[Value]], k: (Rep[SS], Rep[FS], Rep[Value]) => Rep[T]): Rep[T] = {
    val ptr = args(0)
    val name: Rep[String] = getString(ptr, ss)
    val buf: Rep[Value] = args(1)
    if (!fs.hasFile(name)) {
      k(ss, fs, IntV(-1, 32))
    } else {
      val stat = fs.files(name).stat
      val ss1 = ss.updateSeq(buf, stat)
      k(ss1, fs, IntV(0, 32))
    }
  }

  def openat[T: Manifest](ss: Rep[SS], args: Rep[List[Value]], k: (Rep[SS], Rep[Value]) => Rep[T]): Rep[T] = {
    // TODO: implement this <2022-01-23, David Deng> //
    // int __fd_openat(int basefd, const char *pathname, int flags, mode_t mode);
    // if (fd == AT_FDCWD), call open
    k(ss, IntV(0, 32))
  }

  // generate different return style
  def gen_k(gen: (Rep[SS], Rep[List[Value]], (Rep[SS], Rep[Value]) => Rep[Unit]) => Rep[Unit]): ((Rep[SS], Rep[List[Value]], Rep[Cont]) => Rep[Unit]) = { case (ss, l, k) => ( gen(ss, l, { case (s,v) => k(s,v) }))}
  def gen_p(gen: (Rep[SS], Rep[List[Value]], (Rep[SS], Rep[Value]) => Rep[List[(SS, Value)]]) => Rep[List[(SS, Value)]]): ((Rep[SS], Rep[List[Value]]) => Rep[List[(SS, Value)]]) = { case (ss, l) => ( gen(ss, l, { case (s,v) => List[(SS, Value)]((s,v)) }))}

  // bridge SS and FS
  def wrap[T: Manifest](f: (Rep[FS], Rep[List[Value]], ((Rep[FS], Rep[Value]) => Rep[T])) => Rep[T])
  (ss: Rep[SS], args: Rep[List[Value]], k: (Rep[SS], Rep[Value]) => Rep[T]): (Rep[T]) = {
    def kp(fs: Rep[FS], ret: Rep[Value]): Rep[T] = {
        ss.setFs(fs)
        k(ss, ret)
    }
    f(ss.getFs, args, kp)
  }
  def wrap[T: Manifest](f: (Rep[SS], Rep[FS], Rep[List[Value]], ((Rep[SS], Rep[FS], Rep[Value]) => Rep[T])) => Rep[T])
  (ss: Rep[SS], args: Rep[List[Value]], k: (Rep[SS], Rep[Value]) => Rep[T]): (Rep[T]) = {
    def kp(ss: Rep[SS], fs: Rep[FS], ret: Rep[Value]): Rep[T] = {
        ss.setFs(fs)
        k(ss, ret)
    }
    f(ss, ss.getFs, args, kp)
  }
}

class TopFunExperimentDriver(folder: String = "./headers/llsc") extends SAISnippet[Int, Unit] with SAIOps with GenExternal { q =>
  import java.io.{File, PrintStream}
  import scala.collection.mutable.HashMap

  val codegen: GenericLLSCCodeGen = new GenericLLSCCodeGen {
    val codegenFolder: String = folder
    val blockNameMap: HashMap[Int, String] = new HashMap()
    setFunMap(funNameMap)
    setBlockMap(blockNameMap)
    override def emitAll(g: Graph, name: String)(m1: Manifest[_], m2: Manifest[_]): Unit = {
      val ng = init(g)
      run(name, ng)
      emitFunctionDecls(stream)
      emitFunctions(stream)
    }
  }

  def genHeader: Unit = {
    val mainStream = new PrintStream(s"$folder/topfun.hpp")
    val statics = Adapter.emitCommon1("header", codegen, mainStream)(manifest[Int], manifest[Unit])(x => Unwrap(wrapper(Wrap[Int](x))))
    mainStream.close
  }

  def read_dev_field(f: Rep[File]): Rep[Value] = f.readStatField("st_dev")

  def snippet(u: Rep[Int]) = {
    hardTopFun(gen_p(wrap(open(_,_,_,_))), "open", "inline")
    hardTopFun(gen_k(wrap(open(_,_,_,_))), "open", "inline")
    hardTopFun(read_dev_field(_), "read_dev_field", "inline")
    ()
  }
}

object TopFunExperimentGen {
  def main(args: Array[String]): Unit = {
    val code = new TopFunExperimentDriver
    code.genHeader
  }
}

class ExternalLLSCDriver(folder: String = "./headers/llsc") extends SAISnippet[Int, Unit] with SAIOps with GenExternal { q =>
  import java.io.{File, PrintStream}
  import scala.collection.mutable.HashMap

  val codegen: GenericLLSCCodeGen = new GenericLLSCCodeGen {
    val codegenFolder: String = folder
    val blockNameMap: HashMap[Int, String] = new HashMap()
    setFunMap(funNameMap)
    setBlockMap(blockNameMap)
    override def emitAll(g: Graph, name: String)(m1: Manifest[_], m2: Manifest[_]): Unit = {
      val ng = init(g)
      run(name, ng)
      emitln("/* LLSC - External utility functions and library modeling functions */")
      emitln("/* Generated by sai.llsc.TestGenerateExternal */")
      emitln("#ifndef LLSC_EXTERNAL_HEADERS_GEN")
      emitln("#define LLSC_EXTERNAL_HEADERS_GEN")
      emitFunctionDecls(stream)
      emitFunctions(stream)
      emitln("#endif // LLSC_EXTERNAL_HEADERS_GEN")
    }
  }

  def genHeader: Unit = {
    val mainStream = new PrintStream(s"$folder/external.hpp")
    val statics = Adapter.emitCommon1("header", codegen, mainStream)(manifest[Int], manifest[Unit])(x => Unwrap(wrapper(Wrap[Int](x))))
    mainStream.close
  }

  def snippet(u: Rep[Int]) = {
    // TODO: llsc_assert_k depends on sym_exit, which doesn't have a _k version right now <2022-01-23, David Deng> //
    // hardTopFun(gen_p(llsc_assert), "llsc_assert", "inline")
    // hardTopFun(gen_k(llsc_assert), "llsc_assert", "inline")
    hardTopFun(gen_p(wrap(open(_,_,_,_))), "open", "inline")
    hardTopFun(gen_k(wrap(open(_,_,_,_))), "open", "inline")
    hardTopFun(gen_p(wrap(close(_,_,_))), "close", "inline")
    hardTopFun(gen_k(wrap(close(_,_,_))), "close", "inline")
    hardTopFun(gen_p(wrap(read(_,_,_,_))), "read", "inline")
    hardTopFun(gen_k(wrap(read(_,_,_,_))), "read", "inline")
    hardTopFun(gen_p(wrap(write(_,_,_,_))), "write", "inline")
    hardTopFun(gen_k(wrap(write(_,_,_,_))), "write", "inline")
    hardTopFun(gen_p(wrap(lseek(_,_,_))), "lseek", "inline")
    hardTopFun(gen_k(wrap(lseek(_,_,_))), "lseek", "inline")
    hardTopFun(gen_p(wrap(stat(_,_,_,_))), "stat", "inline")
    hardTopFun(gen_k(wrap(stat(_,_,_,_))), "stat", "inline")
    // hardTopFun(gen_p(openat), "openat", "inline")
    // hardTopFun(gen_k(openat), "openat", "inline")
    ()
  }
}

object TestGenerateExternal {
  def main(args: Array[String]): Unit = {
    val code = new ExternalLLSCDriver
    code.genHeader
  }
}
