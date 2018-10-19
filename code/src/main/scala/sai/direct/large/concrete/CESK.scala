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

  def interp(e: Expr, env: Env, sigma: Store): (Value, Store) = e match {
    case IntLit(x) => (NumV(x), sigma)
    case BoolLit(x) => (BoolV(x), sigma)
    case CharLit(x) => (CharV(x), sigma)
    case Var(x) => (sigma(env(x)), sigma)
    case l@Lam(_, _) => (CloV(l, env), sigma)
  }
  def eval(e: Expr): (Value, Store) = interp(e, Map(), Map())
}
