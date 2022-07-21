package sai.llsc

import sai.lang.llvm._
import sai.lang.llvm.IR._
import sai.lang.llvm.parser.Parser._
import sai.llsc.ASTUtils._

import scala.collection.JavaConverters._

import lms.core._
import lms.core.Backend._
import lms.core.virtualize
import lms.macros.SourceContext
import lms.core.stub.{While => _, _}

import sai.lmsx._
import sai.lmsx.smt.SMTBool

trait EngineBase extends SAIOps { self: BasicDefs with ValueDefs =>
  import scala.collection.immutable.{List => StaticList, Map => StaticMap}
  import collection.mutable.{HashMap, HashSet}
  import Constants._

  /* Abstract definitions */

  val m: Module
  type BFTy // Block-function type
  type FFTy // Function-function type

  def repBlockFun(funName: String, b: BB): (BFTy, Int)
  def repFunFun(f: FunctionDef): (FFTy, Int)
  // Todo: should we increase block coverage here?
  def repExternFun(f: FunctionDecl, ret: LLVMType, argTypes: List[LLVMType]): (FFTy, Int)

  def wrapFunV(f: FFTy): Rep[Value]
  def getRealFunctionName(funName: String): String = {
    val new_fname = if (funName != "@main") "__LLSC_USER_"+funName.tail else "llsc_main"
    new_fname.replaceAllLiterally(".","_")
  }

  /* Basic functionalities */

  def info(msg: String) = unchecked("INFO(\"" + msg + "\")")

  def compile(funName: String, b: BB): Unit = {
    if (BBFuns.contains((funName, b))) {
      System.out.println(s"Warning: ignoring the compilation of $funName - ${b.label}")
      return
    }
    val (fn, n) = repBlockFun(funName, b)
    val realFunName = getRealFunctionName(funName)
    blockNameMap(n) = s"${realFunName}_Block$n"
    BBFuns((funName, b)) = fn
  }
  def compile(f: FunctionDef): Unit = {
    if (FunFuns.contains(f.id)) {
      System.out.println(s"Warning: ignoring the recompilation of ${f.id}")
      return
    }
    val (fn, n) = repFunFun(f)
    funNameMap(n) = getRealFunctionName(f.id)
    FunFuns(f.id) = fn
  }
  def compile(funs: List[FunctionDef]): Unit = funs.foreach(compile)

  // `ret` and `argTypes` are the type information from the call-site
  def compile(f: FunctionDecl, ret: LLVMType, argTypes: List[LLVMType]): Unit = {
    val mangledName = getMangledFunctionName(f, argTypes);
    if (FunFuns.contains(mangledName)) {
      System.out.println(s"Warning: ignoring the re-generation of missing native external ${mangledName}")
      return
    }
    val (fn, n) = repExternFun(f, ret, argTypes)
    funNameMap(n) = "__LLSC_NATIVE_EXTERNAL_"+mangledName.tail
    FunFuns(mangledName) = fn
  }

  abstract class highfunc[T, F[_], G[_]] {
    def apply[A:Manifest](a: F[T]): G[A]
  }

  abstract class highfuncPoly[F[_], G[_]] {
    def apply[T:Manifest, A:Manifest](a: F[T]): G[A]
  }

  def applyWithManifestRes[T,F[_],G[+_]](m: Manifest[_], f : highfunc[T, F, G])(arg : F[T]): G[Any] = {
    if (m == manifest[Boolean]) f[Boolean](arg)
    else if (m == manifest[Char]) f[Char](arg)
    else if (m == manifest[Int]) f[Int](arg)
    else if (m == manifest[Long]) f[Long](arg)
    else if (m == manifest[Float]) f[Float](arg)
    else if (m == manifest[Double]) f[Double](arg)
    else if (m == manifest[Array[Boolean]]) f[Array[Boolean]](arg)
    else if (m == manifest[Array[Char]]) f[Array[Char]](arg)
    else if (m == manifest[Array[Short]]) f[Array[Short]](arg)
    else if (m == manifest[Array[Int]]) f[Array[Int]](arg)
    else if (m == manifest[Array[Long]]) f[Array[Long]](arg)
    else ???
  }

  def applyWithManifestRes[T:Manifest,F[_],G[+_]](m: Manifest[_], f : highfuncPoly[F, G])(arg : F[T]): G[Any] = {
    val f_arg = new highfunc[T, F, G] {
      def apply[A:Manifest](a: F[T]): G[A] = f[T, A](arg)
    }
    applyWithManifestRes[T, F, G](m, f_arg)(arg)
  }

  val poly_rep_cast = new highfuncPoly[Rep, Rep] {
    def apply[T:Manifest, A:Manifest](arg: Rep[T]): Rep[A] = arg.castTo[A]
  }

  val funMap: StaticMap[String, FunctionDef] = m.funcDefMap
  val funDeclMap: StaticMap[String, FunctionDecl] = m.funcDeclMap
  val globalDefMap: StaticMap[String, GlobalDef] = m.globalDefMap
  val globalDeclMap: StaticMap[String, GlobalDecl] = m.globalDeclMap
  val typeDefMap: StaticMap[String, LLVMType] = m.typeDefMap
  val symDefMap: StaticMap[String, IndirectSymbolDef] = m.symDefMap

  // Note: the following two functions checks/retrieves functions considering aliases.
  // Note: we assume aliases in symDefMap all indeed have a definition (instead of a declaration)
  def isFunDefined(f: String): Boolean =
    funMap.contains(f) || (symDefMap.contains(f) && {
      val src = symDefMap(f).const
      src.isInstanceOf[GlobalId] && funMap.contains(src.asInstanceOf[GlobalId].id)
    })
  def getFunDef(f: String): FunctionDef =
    funMap.getOrElse(f, (for {
      d <- symDefMap.get(f)
      if d.const.isInstanceOf[GlobalId]
      v <- funMap.get(d.const.asInstanceOf[GlobalId].id)
    } yield v).get)

  lazy val cfg: CFG = CFG(funMap)
  //cfg.prettyPrint

  var heapEnv: StaticMap[String, () => Rep[Value]] = StaticMap()

  val blockNameMap: HashMap[Int, String] = new HashMap()

  val BBFuns: HashMap[(String, BB), BFTy] = new HashMap[(String, BB), BFTy]
  val FunFuns: HashMap[String, FFTy] = new HashMap[String, FFTy]

  def getBBFun(funName: String, blockLab: String): BFTy =
    getBBFun(funName, findBlock(funName, blockLab).get)

  def getBBFun(funName: String, b: BB): BFTy = {
    if (!BBFuns.contains((funName, b))) compile(funName, b)
    BBFuns((funName, b))
  }

  def findBlock(funName: String, lab: String): Option[BB] = funMap.get(funName).get.lookupBlock(lab)
  def findFirstBlock(funName: String): BB = findFundef(funName).body.blocks(0)
  def findFundef(funName: String) = funMap.get(funName).get

  def getRealType(vt: LLVMType): LLVMType = vt match {
    case NamedType(id) => typeDefMap(id)
    case _ => vt
  }

  object StructCalc {
    private def padding(size: Int, align: Int): Int =
      (align - size % align) % align

    private def fields(types: List[LLVMType]): (Int, Int, Int) =
      types.foldLeft((0, 0, 0)) { case ((begin, end, maxalign), ty) =>
        val (size, align) = getTySizeAlign(ty)
        val new_begin = end + padding(end, align)
        (new_begin, new_begin + size, align max maxalign)
      }

    def getSizeAlign(types: List[LLVMType]): (Int, Int) = {
      val (_, size, align) = fields(types)
      (size + padding(size, align), align)
    }

    def getFieldOffset(types: List[LLVMType], idx: Int): Int =
      fields(types.take(idx+1))._1

    def concat[E](cs: List[E])(feval: E => (List[Rep[Value]], Int)): (List[Rep[Value]], Int) = {
      val fill: Int => List[Rep[Value]] = (StaticList.fill(_)(uninitValue))
      val (list, align) = cs.foldLeft((StaticList[Rep[Value]](), 0)) { case ((list, maxalign), c) =>
        val (value, align) = feval(c)
        (list ++ fill(padding(list.size, align)) ++ value, align max maxalign)
      }
      (list ++ fill(padding(list.size, align)), align)
    }
  }

  object PackedStructCalc {
    private def fields(types: List[LLVMType]): (Int, Int) =
      types.foldLeft((0, 0)) { case ((begin, end), ty) =>
        val size = getTySizeAlign(ty)._1
        (end, end + size)
      }

    def getSizeAlign(types: List[LLVMType]): (Int, Int) = {
      val size = fields(types)._2
      (size, 1)
    }

    def getFieldOffset(types: List[LLVMType], idx: Int): Int =
      fields(types.take(idx+1))._1

    def concat[E](cs: List[E])(feval: E => (List[Rep[Value]], Int)): (List[Rep[Value]], Int) = {
      val (list, align) = cs.foldLeft((StaticList[Rep[Value]](), 0)) { case ((list, maxalign), c) =>
        val (value, align) = feval(c)
        (list ++ value, 1)
      }
      (list, 1)
    }
  }

  def getTySizeAlign(vt: LLVMType): (Int, Int) = vt match {
    case ArrayType(num, ety) =>
      val (size, align) = getTySizeAlign(ety)
      (num * size, align)
    case Struct(types) =>
      StructCalc.getSizeAlign(types)
    case NamedType(id) =>
      getTySizeAlign(typeDefMap(id))
    case IntType(size) =>
      val elemSize = (size + BYTE_SIZE - 1) / BYTE_SIZE
      (elemSize, elemSize)
    case PtrType(ty, addrSpace) =>
      val elemSize = ARCH_WORD_SIZE / BYTE_SIZE
      (elemSize, elemSize)
    case ft@FloatType(fk) =>
      import scala.math.{log, ceil, pow}
      val elemSize = (ft.size + BYTE_SIZE - 1) / BYTE_SIZE
      val align = pow(2, ceil(log(elemSize)/log(2)))
      (elemSize, align)
    case PackedStruct(types) =>
      PackedStructCalc.getSizeAlign(types)
    case _ =>
      throw new Exception(s"type $vt is not handled by getTySizeAlign")
  }

  def getTySize(vt: LLVMType): Int = getTySizeAlign(vt)._1

  def calculateOffsetStatic(ty: LLVMType, index: List[Long]): Long = {
    implicit def longToInt(x: Long) = x.toInt
    if (index.isEmpty) 0 else ty match {
      case Struct(types) =>
        val prev: Int = StructCalc.getFieldOffset(types, index.head)
        prev + calculateOffsetStatic(types(index.head), index.tail)
      case ArrayType(size, ety) =>
        index.head * getTySize(ety) + calculateOffsetStatic(ety, index.tail)
      case NamedType(id) =>
        calculateOffsetStatic(typeDefMap(id), index)
      case PtrType(ety, addrSpace) =>
        index.head * getTySize(ety) + calculateOffsetStatic(ety, index.tail)
      case PackedStruct(types) =>
        val prev: Int = PackedStructCalc.getFieldOffset(types, index.head)
        prev + calculateOffsetStatic(types(index.head), index.tail)
      case _ => ???
    }
  }

  def calculateOffset(ty: LLVMType, index: List[Rep[Value]]): Rep[Value] = {
    if (index.isEmpty) IntV(0.toLong, DEFAULT_INDEX_BW) else ty match {
      case PtrType(ety, addrSpace) =>
        (index.head.sExt(DEFAULT_INDEX_BW) mulOff IntV(getTySize(ety), DEFAULT_INDEX_BW)) addOff calculateOffset(ety, index.tail)
      case ArrayType(size, ety) =>
        (index.head.sExt(DEFAULT_INDEX_BW) mulOff IntV(getTySize(ety), DEFAULT_INDEX_BW)) addOff calculateOffset(ety, index.tail)
      case NamedType(id) =>
        calculateOffset(typeDefMap(id), index)
      case Struct(types) =>
        // https://llvm.org/docs/LangRef.html#getelementptr-instruction
        // "When indexing into a (optionally packed) structure, only i32 integer
        //  constants are allowed"
        // TODO: the align argument for getTySize
        // TODO: test this
        val indexCst: List[Long] = index.map { case IntV(n, _) => n.toLong }
        IntV(calculateOffsetStatic(ty, indexCst), DEFAULT_INDEX_BW)
      case PackedStruct(types) =>
        val indexCst: List[Long] = index.map { case IntV(n, _) => n.toLong }
        IntV(calculateOffsetStatic(ty, indexCst), DEFAULT_INDEX_BW)
      case _ => ???
    }
  }

  // Note: we can also assign symbolic values here
  def uninitValue: Rep[Value] = IntV(0, 8) //NullPtr()

  def isAtomicConst(c: Constant): Boolean = c match {
    case BoolConst(_) | IntConst(_) | FloatConst(_) | FloatLitConst(_)
       | NullConst | PtrToIntExpr(_, _, _) | GlobalId(_)
       | BitCastExpr(_, _, _) | GetElemPtrExpr(_, _, _, _, _) =>
      true
    case _ => false
  }

  // Float Type
  def evalHeapAtomicConst(v: Constant, ty: LLVMType): Rep[Value] = v match {
    case BoolConst(b) => IntV(if (b) 1 else 0, 1)
    case IntConst(n) => IntV(n, ty.asInstanceOf[IntType].size)
    case FloatConst(f) => FloatV(f, ty.asInstanceOf[FloatType].size)
    case FloatLitConst(l) => FloatV(l, 80)
    case NullConst => NullLoc()
    case PtrToIntExpr(from, const, to) =>
      val v = evalHeapAtomicConst(const, from)
      if (ARCH_WORD_SIZE == to.asInstanceOf[IntType].size)
        v
      else
        v.trunc(ARCH_WORD_SIZE, to.asInstanceOf[IntType].size)
    case GlobalId(id) if funMap.contains(id) =>
      if (!FunFuns.contains(id)) compile(funMap(id))
      wrapFunV(FunFuns(id))
    case GlobalId(id) => heapEnv(id)()
    case BitCastExpr(from, const, to) => evalHeapAtomicConst(const, to)
    case GetElemPtrExpr(inBounds, baseType, ptrType, const, typedConsts) =>
      val indexLLVMValue = typedConsts.map(tv => tv.const.asInstanceOf[IntConst].n)
      val offset = calculateOffsetStatic(ptrType, indexLLVMValue)
      val base = evalHeapAtomicConst(const, getRealType(ptrType)).asRepOf[LocV]
      base + IntV(offset, DEFAULT_INDEX_BW)
    case _ => throw new Exception("Not atomic heap constant " + v)
  }

  def evalHeapComplexConst(v: Constant, real_ty: LLVMType): (List[Rep[Value]], Int) = {
    v match {
      case StructConst(cs) =>
        real_ty match {
          case Struct(types) =>
            StructCalc.concat(cs) { c => evalHeapConstWithAlign(c.const, c.ty) }
          case PackedStruct(types) =>
            PackedStructCalc.concat(cs) { c => evalHeapConstWithAlign(c.const, c.ty) }
          case _ => ???
        }
      case ArrayConst(cs) =>
        (cs.map(c => evalHeapConstWithAlign(c.const, c.ty)._1).flatten, getTySizeAlign(real_ty)._2)
      case CharArrayConst(s) =>
        val (size, align) = getTySizeAlign(real_ty)
        (s.map(c => IntV(c.toInt, 8)).toList ++ StaticList.fill(size-s.length)(uninitValue), align)
      case ZeroInitializerConst => real_ty match {
        case ArrayType(size, ety) =>
          val (value, align) = evalHeapConstWithAlign(ZeroInitializerConst, ety)
          (StaticList.fill(size)(value).flatten, align)
        case Struct(types) =>
          StructCalc.concat(types) { evalHeapConstWithAlign(ZeroInitializerConst, _) }
        case PackedStruct(types) =>
          PackedStructCalc.concat(types) { evalHeapConstWithAlign(ZeroInitializerConst, _) }
        // TODO: fallback case is not typed
        case _ =>
          val (size, align) = getTySizeAlign(real_ty)
          (IntV(0, 8 * size).toShadowBytes.toStatic, align)
      }
      case UndefConst => real_ty match {
        case ArrayType(size, ety) =>
          val (value, align) = evalHeapConstWithAlign(UndefConst, ety)
          (StaticList.fill(size)(value).flatten, align)
        case Struct(types) =>
          StructCalc.concat(types) { evalHeapConstWithAlign(UndefConst, _) }
        case PackedStruct(types) =>
          PackedStructCalc.concat(types) { evalHeapConstWithAlign(UndefConst, _) }
        // TODO: fallback case is not typed
        case _ =>
          val (size, align) = getTySizeAlign(real_ty)
          (StaticList.fill(size)(uninitValue), align)
      }
      case _ => throw new Exception("Not complex heap constant: " + v)
    }
  }

  // FIXME: Alignment: CharArrayConst, ArrayConst
  def evalHeapConstWithAlign(v: Constant, ty: LLVMType): (List[Rep[Value]], Int) =
    v match {
      case v if isAtomicConst(v) =>
        val real_ty = getRealType(ty)
        val (size, align) = getTySizeAlign(real_ty)
        (evalHeapAtomicConst(v, real_ty).toShadowBytes.toStatic, align)
      case _ => evalHeapComplexConst(v, getRealType(ty))
    }

  def evalHeapConst(v: Constant, ty: LLVMType): List[Rep[Value]] = evalHeapConstWithAlign(v, ty)._1

  def precompileHeapLists(modules: StaticList[Module]): StaticList[Rep[Value]] = {
    var heapSize = 8
    var heapTmp: StaticList[Rep[Value]] = StaticList.fill(heapSize)(NullPtr[Value])
    for (module <- modules) {
      // module.funcDeclMap.foreach { case (k, v) =>
      //   heapEnv += k -> unit(heapSize)
      //   heapSize += 8;
      // }
      // module.funcDefMap.foreach { case (k, v) =>
      //   if (k != "@main")  {
      //     heapEnv += k -> unit(heapSize)
      //     funcEnv = (heapSize, k) :: funcEnv
      //     heapSize += 8;
      //   }
      // }
      // heapTmp ++= StaticList.fill(heapSize)(NullPtr())
      module.globalDeclMap.foreach { case (k, v) =>
        val realname = module.mname + "_" + v.id
        val curSize = getTySize(v.typ).toLong
        val heapSize2 = heapSize.toLong
        heapEnv += realname -> (() => LocV(heapSize2, LocV.kHeap, curSize))
        heapSize += curSize
        heapTmp ++= evalHeapConst(ZeroInitializerConst, v.typ)
      }
      module.globalDefMap.foreach { case (k, v) =>
        val curSize = getTySize(v.typ).toLong
        val heapSize2 = heapSize.toLong
        heapEnv += k -> (() => LocV(heapSize2, LocV.kHeap, curSize))
        heapSize += curSize
      }
      module.globalDefMap.foreach { case (k, v) =>
        heapTmp ++= evalHeapConst(v.const, getRealType(v.typ))
      }
    }
    heapTmp
  }
}
