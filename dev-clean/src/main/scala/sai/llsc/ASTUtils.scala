package sai.llsc

import sai.lang.llvm._
import sai.lang.llvm.IR._
import sai.lang.llvm.parser.Parser._

import sai.lmsx._

object ASTUtils {
  def extractValues(args: List[Arg]): List[LLVMValue] = args.map {
    case TypedArg(ty, attrs, value) => value
  }
  def extractTypes(args: List[Arg]): List[LLVMType] = args.map {
    case TypedArg(ty, attrs, value) => ty
  }

  // For function that has Variable Arguments, we need to generate different code for different call-sites and argument types.
  def getMangledFunctionName(f: FunctionDecl, argTypes: List[LLVMType]): String = {
    val hasVararg = f.header.params.contains(Vararg)
    val mangledName = if (!hasVararg) f.id else f.id + argTypes.map("_"+_.prettyName).mkString("")
    mangledName.replaceAllLiterally(".", "_")
  }

  def flattenTypedList(xs: List[TypedConst]) = xs.map(c => flattenAS(c.const)).flatten

  def flattenAS(cst: Constant): List[Constant] = cst match {
    case ArrayConst(xs) =>
      flattenTypedList(xs)
    case StructConst(xs) =>
      flattenTypedList(xs)
    case _ => List(cst)
  }

  def flattenTy(ty: LLVMType): List[LLVMType] = ty match {
    case Struct(types) =>
      types.flatMap(flattenTy(_))
    case ArrayType(size, ety) =>
      List.fill(size)(flattenTy(ety)).flatten
    case _ => List(ty)
  }

  implicit class LLVMTypeOps(t: LLVMType) {
    def toManifest: Manifest[_] = t match {
      case IntType(1) => manifest[Boolean]
      case IntType(8) => manifest[Char]
      case IntType(16) => manifest[Short]
      case IntType(32) => manifest[Int]
      case IntType(64) => manifest[Long]
      case FloatType(FK_Float) => manifest[Float]
      case FloatType(FK_Double) => manifest[Double]
      case PtrType(IntType(1), addrSpace) => manifest[Ptr[Boolean]]
      case PtrType(IntType(8), addrSpace) => manifest[Ptr[Char]]
      case PtrType(IntType(16), addrSpace) => manifest[Ptr[Short]]
      case PtrType(IntType(32), addrSpace) => manifest[Ptr[Int]]
      case PtrType(IntType(64), addrSpace) => manifest[Ptr[Long]]
      case _ => ???
    }

    def prettyName: String = t match {
      case IntType(1) => "bool"
      case IntType(8) => "char"
      case IntType(16) => "short"
      case IntType(32) => "int"
      case IntType(64) => "long"
      case FloatType(FK_Float) => "float"
      case FloatType(FK_Double) => "double"
      case PtrType(ty, addrSpace) => "pointer"
      case _ => ???
    }
  }
}

object Constants {
  final val BYTE_SIZE: Int = 8
  final val DEFAULT_INT_BW: Int = BYTE_SIZE * 4
  final val DEFAULT_ADDR_BW: Int = BYTE_SIZE * 8
  final val DEFAULT_INDEX_BW: Int = BYTE_SIZE * 8
  final val ARCH_WORD_SIZE: Int = 64
}

case class CFG(funMap: Map[String, FunctionDef]) {
  import collection.mutable.HashMap
  import sai.structure.lattices.Lattices._

  type Fun = String
  type Label = String
  type Succs = Map[Label, Set[Label]]
  type Preds = Map[Label, Set[Label]]
  type Dom = Map[Label, Set[Label]]
  type Graph = (Succs, Preds)

  val mtGraph: Graph = Lattice[Graph].bot

  val funCFG: Map[Fun, (Graph, Dom)] = funMap.map({ case (f, d) => {
    val graph = construct(d.body.blocks)
    (f, (graph, computeDom(d.body.blocks, graph)))
  }
  }).toMap

  def succ(fname: String, label: Label): Set[Label] = funCFG(fname)._1._1(label)
  def pred(fname: String, label: Label): Set[Label] = funCFG(fname)._1._2(label)

  def construct(blocks: List[BB]): Graph = blocks.foldLeft(mtGraph) { case (g, b) =>
    val from: Label = b.label.get
    val to: Set[Label] = b.term match {
      case BrTerm(lab) => Set(lab)
      case CondBrTerm(ty, cnd, thnLab, elsLab) => Set(thnLab, elsLab)
      case SwitchTerm(cndTy, cndVal, default, table) => Set(default) ++ table.map(_.label).toSet
      case _ => Set()
    }
    g ⊔ (Map(from → to), to.map(_ → Set(from)).toMap)
  }

  def recursiveComputeDom(dom : Dom, g: Graph): Dom = {
    val lables = dom.keys.toList
    val (new_dom, is_changed) = lables.foldLeft((dom, false)) { case ((dmap, changed), l) =>
      if (g._2.getOrElse(l, Set[Label]()).isEmpty) (dmap, changed)
      else {
        val intersection_set = g._2(l).tail.foldLeft(dmap(g._2(l).head)) { case (s, p_l) => s intersect dmap(p_l)}
        val old_dset = dmap(l)
        val new_dset = Set(l) union intersection_set
        (dmap + (l -> new_dset), if (new_dset != old_dset) true else changed)
      }
    }
    if (is_changed) recursiveComputeDom(new_dom, g) else new_dom
  }

  def dfs_visit(visited: Set[Label], rpo_list: List[Label], n: Label, g: Graph): (Set[Label], List[Label]) = {
    val (final_visited, final_list) = g._1.getOrElse(n, Set[Label]()).foldLeft((visited + n, rpo_list)) { case ((vset, temp_list), child) =>
      if (vset.contains(child)) (vset, temp_list)
      else dfs_visit(vset, temp_list, child, g)
    }
    (final_visited, n :: final_list)
  }

  def computeDom(blocks: List[BB], g: Graph): Dom = {
    val entry_nodelist = blocks.map(_.label.get).filter(g._2.getOrElse(_, Set[Label]()).isEmpty)
    if (entry_nodelist.size != 1) ???
    val entry_node = entry_nodelist.head
    val (visited, reverse_postorder_list) = dfs_visit(Set[Label](), List[Label](), entry_node, g)
    //scala.Predef.println("visited: "+visited+"\nrpo:"+reverse_postorder_list)
    if ((reverse_postorder_list.size != blocks.size) || (visited.size != blocks.size)) ???

    val universal_set = blocks.map(_.label.get).toSet

    val initial_dom = blocks.foldLeft(Map[Label, Set[Label]]()) { case (dom, b) =>
      dom + (b.label.get -> universal_set)
    }
    val res = recursiveComputeDom(initial_dom + (entry_node -> Set(entry_node)), g)
    //res.foreach({ case (l, lset) =>
    //  lset.foreach({ case dnode =>
    //    if (g._1.getOrElse(l, Set()).contains(dnode)) {
    //      scala.Predef.println("latch: "+l)
    //      scala.Predef.println("back edge: "+l+" -> "+dnode)
    //    }
    //  })
    //})
    res
  }

  def prettyPrint: Unit =
    funCFG.foreach { case (f, g) =>
      println(s"$f\n  successors:")
      g._1._1.foreach { case (from, to) =>
        val toStr = to.mkString(",")
        println(s"    $from → {$toStr}")
      }
      println("  predecessors:")
      g._1._2.foreach { case (to, from) =>
        val fromStr = from.mkString(",")
        println(s"    $to → {$fromStr}")
      }
      println("  dominator:")
      g._2.foreach { case (to, from) =>
        val fromStr = from.mkString(",")
        println(s"    $to → {$fromStr}")
      }
    }
}
