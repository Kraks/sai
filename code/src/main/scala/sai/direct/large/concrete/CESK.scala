package sai.direct.large.concrete

import sai.direct.large.parser._

object CESK {
  type Addr = Int
  type Env = Map[String, Addr]
  type Store = Map[Addr, Value]

  abstract class Value
  object NotAValue extends Value
  case class NumV(i: Int) extends Value with Expr
  case class CharV(c: Char) extends Value with Expr
  case class BoolV(b: Boolean) extends Value with Expr
  case class ListV(l: List[Value]) extends Value with Expr
  case class VectorV(v: Vector[Value]) extends Value with Expr
  case class CloV(λ: Lam, ρ: Env) extends Value
  case class VoidV() extends Value

  abstract class Kont
  object Halt extends Kont
  case class KArg(e: Expr, ρ: Env, κ: Kont) extends Kont
  case class KApp(lam: Lam, ρ: Env, κ: Kont) extends Kont
  case class KLrc(as: List[Addr], bds: List[Bind], e: Expr, ρ: Env, κ: Kont) extends Kont
  case class KIf0(thn: Expr, els: Expr, ρ: Env, κ: Kont) extends Kont
  case class KAOp(op: Symbol, vs: List[NumV], es: List[Expr], ρ: Env, κ: Kont) extends Kont

  case class State(e: Expr, ρ: Env, σ: Store, κ: Kont)

  def alloc(σ: Store): Addr = σ.keys.size + 1

  def isValue(e: Expr): Boolean = e.isInstanceOf[NumV] | e.isInstanceOf[Lam]

  /* evalArith assumes that arguments are provided from right to left. */
  def evalArith(op: Symbol, vs: List[NumV]): NumV = op match {
    case '+ ⇒ vs.reduceRight[NumV] { case (NumV(i), NumV(j)) ⇒ NumV(j+i) }
    case '- ⇒ vs.reduceRight[NumV] { case (NumV(i), NumV(j)) ⇒ NumV(j-i) }
    case '* ⇒ vs.reduceRight[NumV] { case (NumV(i), NumV(j)) ⇒ NumV(j*i) }
  }
}

import CESK._

object BigStepCES {

  // evaluates a list of Exprs in order
  // returns List of evaluated values and an ending state
  def interpListOfExprs(l: List[Expr], env:Env, sigma: Store): (List[Value], Store) = l match {
    case Nil => (Nil, sigma)
    case e::el =>
      val (ev, es) = interp(e, env, sigma)
      val (elv, els) = interpListOfExprs(el, env, es)
      (ev :: elv, els)
  }

  def interpSeq(l: List[Expr], env: Env, sigma: Store): (Value, Store) = l match {
    case Nil => (VoidV(), sigma)
    case e::Nil => interp(e, env, sigma)
    case e::el =>
      val (_, es) = interp(e, env, sigma)
      interpSeq(el, env, es)
  }

  def interp(e: Expr, env: Env, sigma: Store): (Value, Store) = e match {
    case IntLit(x) => (NumV(x), sigma)
    case BoolLit(x) => (BoolV(x), sigma)
    case CharLit(x) => (CharV(x), sigma)
    case Var(x) => (sigma(env(x)), sigma)
    case l@Lam(_, _) => (CloV(l, env), sigma)
    case If(cnd, thn, els) =>
      val (ev, es) = interp(cnd, env, sigma)
      ev match {
        case BoolV(true) => interp(thn, env, es)
        case BoolV(false) => interp(els, env, es)
      }

    case Cond(branches) => ???
    case Case(e, branches) => ???
    case App(e, param) =>
      val (ev, es) = interp(e, env, sigma)
      val (appv, es_) = interpListOfExprs(param, env, es)
      val addrs = appv map { (v: Value) => alloc(es_) }
      ev match {
        case CloV(Lam(args, lbody), cenv) =>
          interp(lbody, cenv ++ (args zip addrs), es_ ++ (addrs zip appv))
      }

    case Void() => (VoidV(), sigma)
    case Set_!(x, e) =>
      val (ev, es) = interp(e, env, sigma)
      val toAdd = (env(x), ev)
      (VoidV(), es + toAdd)
    case Begin(l) => interpSeq(l, env, sigma)
    case Define(x: String, e: Expr) => ???
  }
  def eval(e: Expr): (Value, Store) = interp(e, Map(), Map())
}

object CESKTest {
  def main(args: Array[String]) = {
    assert(BigStepCES.eval(IntLit(1)) == (NumV(1), Map()))
  }
}