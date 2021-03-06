package sai
package lms

import scala.virtualization.lms.common._
import scala.virtualization.lms.internal.GenericNestedCodegen
import org.scala_lang.virtualized.virtualize
import org.scala_lang.virtualized.SourceContext

/* Enhanced ListOps for SAI */

trait ListOps extends Variables with TupleOps {
  object List {
    def apply[A:Manifest](xs: Rep[A]*)(implicit pos: SourceContext) = list_new(xs)
  }

  implicit def varToListOps[T:Manifest](x: Var[List[T]]) = new ListOpsCls(readVar(x)) 
  implicit def repToListOps[T:Manifest](a: Rep[List[T]]) = new ListOpsCls(a)
  implicit def listToListOps[T:Manifest](a: List[T]) = new ListOpsCls(unit(a))

  class ListOpsCls[A:Manifest](l: Rep[List[A]]) {
    def map[B:Manifest](f: Rep[A] => Rep[B]) = list_map(l,f)
    def flatMap[B : Manifest](f: Rep[A] => Rep[List[B]]) = list_flatMap(l,f)
    def withFilter(f: Rep[A] => Rep[Boolean]) = list_filter(l, f)
    def filter(f: Rep[A] => Rep[Boolean]) = list_filter(l, f)
    def sortBy[B:Manifest:Ordering](f: Rep[A] => Rep[B]) = list_sortby(l,f)
    def ::(e: Rep[A]) = list_prepend(l,e)
    def ++[B>:A:Manifest] (l2: Rep[List[B]]) = list_concat(l, l2)
    def mkString = list_mkString(l)
    def mkString(s:Rep[String]) = list_mkString2(l,s)
    def head = list_head(l)
    def tail = list_tail(l)
    def isEmpty = list_isEmpty(l)
    def toArray = list_toarray(l)
    def toSeq = list_toseq(l)
    /****************************/
    def zip[B:Manifest](rhs: Rep[List[B]]) = list_zip(l, rhs)
    def take(i: Rep[Int]) = list_take(l, i)
    def foldLeft[B:Manifest](z: Rep[B])(f: (Rep[B], Rep[A]) => Rep[B]) = list_foldLeft(l, z, f)
    def foldLeftNoRep[B:Manifest, M[_]](z: Rep[B])(f: (Rep[B], Rep[A]) => M[B]) = list_foldLeftNoRep(l, z, f)
    def foldLeftPair[B:Manifest,C:Manifest](z: Rep[(B,C)])(f: ((Rep[B], Rep[C]), Rep[A]) => Rep[(B,C)]) = list_foldLeftPair(l, z, f)
    def containsSlice(that: Rep[List[A]]) = list_containsSlice(l, that)
    def intersect(that: Rep[List[A]]) = list_intersect(l, that)
  }

  def list_new[A:Manifest](xs: Seq[Rep[A]])(implicit pos: SourceContext): Rep[List[A]]
  def list_fromseq[A:Manifest](xs: Rep[Seq[A]])(implicit pos: SourceContext): Rep[List[A]]
  def list_map[A:Manifest,B:Manifest](l: Rep[List[A]], f: Rep[A] => Rep[B])(implicit pos: SourceContext): Rep[List[B]]
  def list_flatMap[A : Manifest, B : Manifest](xs: Rep[List[A]], f: Rep[A] => Rep[List[B]])(implicit pos: SourceContext): Rep[List[B]]
  def list_filter[A : Manifest](l: Rep[List[A]], f: Rep[A] => Rep[Boolean])(implicit pos: SourceContext): Rep[List[A]]
  def list_sortby[A:Manifest,B:Manifest:Ordering](l: Rep[List[A]], f: Rep[A] => Rep[B])(implicit pos: SourceContext): Rep[List[A]]
  def list_prepend[A:Manifest](l: Rep[List[A]], e: Rep[A])(implicit pos: SourceContext): Rep[List[A]]
  def list_toarray[A:Manifest](l: Rep[List[A]])(implicit pos: SourceContext): Rep[Array[A]]
  def list_toseq[A:Manifest](l: Rep[List[A]])(implicit pos: SourceContext): Rep[Seq[A]]
  def list_concat[A:Manifest](xs: Rep[List[A]], ys: Rep[List[A]])(implicit pos: SourceContext): Rep[List[A]]
  def list_cons[A:Manifest](x: Rep[A], xs: Rep[List[A]])(implicit pos: SourceContext): Rep[List[A]]
  def list_mkString[A : Manifest](xs: Rep[List[A]])(implicit pos: SourceContext): Rep[String]
  def list_mkString2[A : Manifest](xs: Rep[List[A]], sep:Rep[String])(implicit pos: SourceContext): Rep[String]
  def list_head[A:Manifest](xs: Rep[List[A]])(implicit pos: SourceContext): Rep[A]
  def list_tail[A:Manifest](xs: Rep[List[A]])(implicit pos: SourceContext): Rep[List[A]]
  def list_isEmpty[A:Manifest](xs: Rep[List[A]])(implicit pos: SourceContext): Rep[Boolean]

  def list_zip[A:Manifest, B:Manifest](lhs: Rep[List[A]], rhs: Rep[List[B]])(implicit pos: SourceContext): Rep[List[(A, B)]]
  def list_take[A:Manifest](xs: Rep[List[A]], i: Rep[Int])(implicit pos: SourceContext): Rep[List[A]]
  def list_foldLeft[A:Manifest,B:Manifest](s: Rep[List[A]], z: Rep[B], f: (Rep[B], Rep[A]) => Rep[B])(implicit pos: SourceContext): Rep[B]
  def list_foldLeftNoRep[A:Manifest,B:Manifest,M[_]](s: Rep[List[A]], z: Rep[B], f: (Rep[B], Rep[A]) => M[B])(implicit pos: SourceContext): M[B]
  def list_foldLeftPair[A:Manifest,B:Manifest,C:Manifest](s: Rep[List[A]], z: Rep[(B,C)], f: ((Rep[B], Rep[C]), Rep[A]) => Rep[(B,C)])(implicit pos: SourceContext): Rep[(B,C)]
  def list_containsSlice[A:Manifest](l1: Rep[List[A]], l2: Rep[List[A]])(implicit pos: SourceContext): Rep[Boolean]
  def list_intersect[A:Manifest](l1: Rep[List[A]], l2: Rep[List[A]])(implicit pos: SourceContext): Rep[List[A]]
}

trait ListOpsExp extends ListOps with EffectExp with VariablesExp {
  case class ListNew[A:Manifest](xs: Seq[Rep[A]], ma: Manifest[A]) extends Def[List[A]]
  case class ListFromSeq[A:Manifest](xs: Rep[Seq[A]]) extends Def[List[A]]
  case class ListMap[A:Manifest,B:Manifest](l: Exp[List[A]], x: Sym[A], block: Block[B]) extends Def[List[B]]
  case class ListFlatMap[A:Manifest, B:Manifest](l: Exp[List[A]], x: Sym[A], block: Block[List[B]]) extends Def[List[B]]
  case class ListFilter[A : Manifest](l: Exp[List[A]], x: Sym[A], block: Block[Boolean]) extends Def[List[A]]
  case class ListSortBy[A:Manifest,B:Manifest:Ordering](l: Exp[List[A]], x: Sym[A], block: Block[B]) extends Def[List[A]]
  case class ListPrepend[A:Manifest](x: Exp[List[A]], e: Exp[A]) extends Def[List[A]]
  case class ListToArray[A:Manifest](x: Exp[List[A]]) extends Def[Array[A]]
  case class ListToSeq[A:Manifest](x: Exp[List[A]]) extends Def[Seq[A]]
  case class ListConcat[A:Manifest](xs: Rep[List[A]], ys: Rep[List[A]]) extends Def[List[A]]
  case class ListCons[A:Manifest](x: Rep[A], xs: Rep[List[A]]) extends Def[List[A]]
  case class ListMkString[A:Manifest](l: Exp[List[A]]) extends Def[String]
  case class ListMkString2[A:Manifest](l: Exp[List[A]], s: Exp[String]) extends Def[String]
  case class ListHead[A:Manifest](xs: Rep[List[A]]) extends Def[A]
  case class ListTail[A:Manifest](xs: Rep[List[A]]) extends Def[List[A]]
  case class ListIsEmpty[A:Manifest](xs: Rep[List[A]]) extends Def[Boolean]

  case class ListZip[A:Manifest, B:Manifest](lhs: Rep[List[A]], rhs: Rep[List[B]]) extends Def[List[(A, B)]]
  case class ListTake[A:Manifest](xs: Rep[List[A]], i: Rep[Int]) extends Def[List[A]]
  case class ListFoldLeft[A:Manifest,B:Manifest](s: Exp[List[A]], z: Exp[B], acc: Sym[B], x: Sym[A], block: Block[B]) extends Def[B]
  case class ListContainsSlice[A:Manifest](l1: Exp[List[A]], l2: Exp[List[A]]) extends Def[Boolean]
  case class ListIntersect[A:Manifest](l1: Exp[List[A]], l2: Exp[List[A]]) extends Def[List[A]]
  case class ListFoldLeftPair[A:Manifest,B:Manifest,C:Manifest](s: Exp[List[A]], z: Exp[(B,C)], acc1: Sym[B], acc2: Sym[C], x: Sym[A], block: Block[(B,C)]) extends Def[(B,C)]

  def list_new[A:Manifest](xs: Seq[Rep[A]])(implicit pos: SourceContext) = ListNew(xs, manifest[A])
  def list_fromseq[A:Manifest](xs: Rep[Seq[A]])(implicit pos: SourceContext) = ListFromSeq(xs)
  def list_map[A:Manifest,B:Manifest](l: Exp[List[A]], f: Exp[A] => Exp[B])(implicit pos: SourceContext) = {
    val a = fresh[A]
    val b = reifyEffects(f(a))
    reflectEffect(ListMap(l, a, b), summarizeEffects(b).star)
  }
  def list_flatMap[A:Manifest, B:Manifest](l: Exp[List[A]], f: Exp[A] => Exp[List[B]])(implicit pos: SourceContext) = {
    val a = fresh[A]
    val b = reifyEffects(f(a))
    reflectEffect(ListFlatMap(l, a, b), summarizeEffects(b).star)
  }
  def list_filter[A : Manifest](l: Exp[List[A]], f: Exp[A] => Exp[Boolean])(implicit pos: SourceContext) = {
    val a = fresh[A]
    val b = reifyEffects(f(a))
    reflectEffect(ListFilter(l, a, b), summarizeEffects(b).star)
  }
  def list_sortby[A:Manifest,B:Manifest:Ordering](l: Exp[List[A]], f: Exp[A] => Exp[B])(implicit pos: SourceContext) = {
    val a = fresh[A]
    val b = reifyEffects(f(a))
    reflectEffect(ListSortBy(l, a, b), summarizeEffects(b).star)
  }
  def list_toarray[A:Manifest](l: Exp[List[A]])(implicit pos: SourceContext) = ListToArray(l)
  def list_toseq[A:Manifest](l: Exp[List[A]])(implicit pos: SourceContext) = ListToSeq(l)
  def list_prepend[A:Manifest](l: Exp[List[A]], e: Exp[A])(implicit pos: SourceContext) = ListPrepend(l,e)
  def list_concat[A:Manifest](xs: Rep[List[A]], ys: Rep[List[A]])(implicit pos: SourceContext) = ListConcat(xs,ys)
  def list_cons[A:Manifest](x: Rep[A], xs: Rep[List[A]])(implicit pos: SourceContext) = ListCons(x,xs)
  def list_mkString[A:Manifest](l: Exp[List[A]])(implicit pos: SourceContext) = ListMkString(l)
  def list_mkString2[A:Manifest](l: Rep[List[A]], sep:Rep[String])(implicit pos: SourceContext) = ListMkString2(l,sep)
  def list_head[A:Manifest](xs: Rep[List[A]])(implicit pos: SourceContext) = ListHead(xs)
  def list_tail[A:Manifest](xs: Rep[List[A]])(implicit pos: SourceContext) = ListTail(xs)
  def list_isEmpty[A:Manifest](xs: Rep[List[A]])(implicit pos: SourceContext) = ListIsEmpty(xs)

  def list_zip[A:Manifest, B:Manifest](lhs: Rep[List[A]], rhs: Rep[List[B]])(implicit pos: SourceContext) = ListZip(lhs, rhs)
  def list_take[A:Manifest](xs: Rep[List[A]], i: Rep[Int])(implicit pos: SourceContext) = ListTake(xs, i)
  def list_foldLeft[A:Manifest,B:Manifest](s: Exp[List[A]], z: Exp[B], f: (Rep[B], Rep[A]) => Rep[B])(implicit pos: SourceContext) = {
    val acc = fresh[B]
    val x = fresh[A]
    val b = reifyEffects(f(acc, x))
    reflectEffect(ListFoldLeft(s, z, acc, x, b), summarizeEffects(b).star)
  }
  def list_foldLeftNoRep[A:Manifest,B:Manifest,M[_]](s: Exp[List[A]], z: Exp[B], f: (Exp[B], Exp[A]) => M[B])(implicit pos: SourceContext) = {
    ???
  }
  def list_containsSlice[A: Manifest](l1: Exp[List[A]], l2: Exp[List[A]])(implicit pos: SourceContext) = ListContainsSlice(l1, l2)
  def list_intersect[A:Manifest](l1: Exp[List[A]], l2: Exp[List[A]])(implicit pos: SourceContext) = ListIntersect(l1, l2)
  def list_foldLeftPair[A:Manifest,B:Manifest,C:Manifest](s: Exp[List[A]], z: Exp[(B,C)], f: ((Exp[B], Exp[C]), Exp[A]) => Exp[(B,C)])(implicit pos: SourceContext) = {
    val acc1 = fresh[B]
    val acc2 = fresh[C]
    val x = fresh[A]
    val b = reifyEffects(f((acc1, acc2), x))
    reflectEffect(ListFoldLeftPair(s, z, acc1, acc2, x, b), summarizeEffects(b).star)
  }

  override def mirror[A:Manifest](e: Def[A], f: Transformer)(implicit pos: SourceContext): Exp[A] = {
    (e match {
       case ListNew(xs, _) => list_new(f(xs))
       case _ => super.mirror(e,f)
     }).asInstanceOf[Exp[A]] // why??
  }

  override def syms(e: Any): List[Sym[Any]] = e match {
    case ListMap(a, x, body) => syms(a):::syms(body)
    case ListFlatMap(a, _, body) => syms(a) ::: syms(body)
    case ListFilter(a, _, body) => syms(a) ::: syms(body)
    case ListSortBy(a, x, body) => syms(a):::syms(body)
    case ListFoldLeft(s, z, acc, x, body) => syms(s) ::: syms(z) ::: syms(body)
    case ListFoldLeftPair(s, z, acc1, acc2, x, body) => syms(s) ::: syms(z) ::: syms(body)
    case _ => super.syms(e)
  }

  override def boundSyms(e: Any): List[Sym[Any]] = e match {
    case ListMap(a, x, body) => x :: effectSyms(body)
    case ListFlatMap(_, x, body) => x :: effectSyms(body)
    case ListFilter(_, x, body) => x :: effectSyms(body)
    case ListSortBy(a, x, body) => x :: effectSyms(body)
    case ListFoldLeft(s, z, acc, x, body) => acc :: x :: effectSyms(body)
    case ListFoldLeftPair(s, z, acc1, acc2, x, body) => acc1::acc2::x::effectSyms(body)
    case _ => super.boundSyms(e)
  }

  override def symsFreq(e: Any): List[(Sym[Any], Double)] = e match {
    case ListMap(a, x, body) => freqNormal(a):::freqHot(body)
    case ListFlatMap(a, _, body) => freqNormal(a) ::: freqHot(body)
    case ListFilter(a, _, body) => freqNormal(a) ::: freqHot(body)
    case ListSortBy(a, x, body) => freqNormal(a) ::: freqHot(body)
    case ListFoldLeft(s, z, acc, x, body) => freqNormal(s) ::: freqNormal(z) ::: freqHot(body)
    case ListFoldLeftPair(s, z, acc1, acc2, x, body) => freqNormal(s) ::: freqNormal(z) ::: freqHot(body)
    case _ => super.symsFreq(e)
  }
}

trait ListOpsExpOpt extends ListOpsExp with TupleOpsExp {
  override def list_prepend[A:Manifest](l: Exp[List[A]], e: Exp[A])(implicit pos: SourceContext) = (l, e) match {
    case (Def(ListNew(xs,t)), e) => ListNew(e +: xs, manifest[A])
    case _ => super.list_prepend(l, e)
  }

  override def list_concat[A : Manifest](xs1: Exp[List[A]], xs2: Exp[List[A]])(implicit pos: SourceContext): Exp[List[A]] = (xs1, xs2) match {
    case (Def(ListNew(xs1, t1)), Def(ListNew(xs2, t2))) => ListNew(xs1 ++ xs2, manifest[A])
    case (Def(ListNew(Seq(), _)), xs2) => xs2
    case (xs1, Def(ListNew(Seq(), _))) => xs1
    case _ => super.list_concat(xs1, xs2)
  }

  override def list_foldLeft[A: Manifest, B: Manifest](s: Exp[List[A]], z: Exp[B], f: (Exp[B], Exp[A]) => Exp[B])(implicit pos: SourceContext): Exp[B] = s match {
    case Def(ListNew(xs, _)) if xs.size == 0 => z
    case Def(ListNew(xs, _)) if xs.size == 1 => f(z, xs(0))
    case Def(ListNew(xs, _)) => xs.foldLeft(z)(f)
    case _ => super.list_foldLeft(s, z, f)
  }

  override def list_foldLeftPair[A: Manifest, B: Manifest, C: Manifest](s: Exp[List[A]], z: Exp[(B, C)], f: ((Exp[B], Exp[C]), Exp[A]) => Exp[(B,C)])(implicit pos: SourceContext): Exp[(B,C)] = s match {
    case Def(ListNew(xs, _)) if xs.size == 0 => z
    case Def(ListNew(xs, _)) if xs.size == 1 => f(z, xs(0))
    //case Def(ListNew(xs, _)) => xs.foldLeft(z)(f)
    case _ => super.list_foldLeftPair(s, z, f)
  }
}

trait BaseGenListOps extends GenericNestedCodegen {
  val IR: ListOpsExp
  import IR._

}

trait ScalaGenListOps extends BaseGenListOps with ScalaGenEffect {
  val IR: ListOpsExp
  import IR._

  override def emitNode(sym: Sym[Any], rhs: Def[Any]) = rhs match {
    case ListNew(xs, mA) => emitValDef(sym, src"List[$mA](${(xs map {quote}).mkString(",")})")
    case ListConcat(xs,ys) => emitValDef(sym, src"$xs ++ $ys")
    case ListCons(x, xs) => emitValDef(sym, src"$x :: $xs")
    case ListHead(xs) => emitValDef(sym, src"$xs.head")
    case ListTail(xs) => emitValDef(sym, src"$xs.tail")
    case ListIsEmpty(xs) => emitValDef(sym, src"$xs.isEmpty")
    case ListFromSeq(xs) => emitValDef(sym, src"List($xs: _*)")
    case ListMkString(xs) => emitValDef(sym, src"$xs.mkString")
    case ListMkString2(xs,s) => emitValDef(sym, src"$xs.mkString($s)")
    case ListMap(l,x,blk) =>
      gen"""val $sym = $l.map { $x =>
           |${nestedBlock(blk)}
           |$blk
           |}"""
    case ListFlatMap(l, x, b) =>
      gen"""val $sym = $l.flatMap { $x =>
           |${nestedBlock(b)}
           |$b
           |}"""
    case ListFilter(l, x, b) =>
      gen"""val $sym = $l.filter { $x =>
           |${nestedBlock(b)}
           |$b
           |}"""
    case ListSortBy(l,x,blk) =>
      gen"""val $sym = $l.sortBy { $x =>
           |${nestedBlock(blk)}
           |$blk
           |}"""
    case ListPrepend(l,e) => emitValDef(sym, src"$e :: $l")
    case ListToArray(l) => emitValDef(sym, src"$l.toArray")
    case ListToSeq(l) => emitValDef(sym, src"$l.toSeq")
    /*************************************/
    case ListZip(xs, ys) => emitValDef(sym, src"$xs.zip($ys)")
    case ListTake(l, i) => emitValDef(sym, src"$l.take($i)")
    case ListFoldLeft(s, z, acc, x, block) =>
      gen"""val $sym = $s.foldLeft ($z) { case ($acc, $x) =>
            |${nestedBlock(block)}
            |$block
            |}"""
    case ListFoldLeftPair(s, z, acc1, acc2, x, block) =>
      gen"""val $sym = $s.foldLeft ($z) { case (($acc1, $acc2), $x) =>
            |${nestedBlock(block)}
            |$block
            |}"""
    case ListContainsSlice(l1, l2) => emitValDef(sym, src"$l1.containsSlice($l2)")
    case ListIntersect(l1, l2) => emitValDef(sym, src"$l1.intersect($l2)")
    case _ => super.emitNode(sym, rhs)
  }
}

trait CLikeGenListOps extends BaseGenListOps with CLikeGenBase {
  val IR: ListOpsExp
  import IR._

  /*
   override def emitNode(sym: Sym[Any], rhs: Def[Any]) = {
   rhs match {
   case _ => super.emitNode(sym, rhs)
   }
   }
   */
}

trait CudaGenListOps extends CudaGenEffect with CLikeGenListOps
trait OpenCLGenListOps extends OpenCLGenEffect with CLikeGenListOps
trait CGenListOps extends CGenEffect with CLikeGenListOps
