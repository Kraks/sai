package sai.direct.large.parser

object LargeSchemeASTDesugar {

  var lastIdent = 0

  def newIdentLet(e: Expr)(f: Expr => Expr): App = {
    val prefix = "__$"
    val id = lastIdent
    lastIdent += 1
    val newIdent: String = prefix + id
    App(Lam(List(newIdent), f(Var(newIdent))), List(Var(newIdent)))
  }

  def desugarCondBranches(branches: List[CondBrTrait]) = branches match {
    case Nil => Void()
    case x :: xs =>
      x match {
        case CondBr(cnd, thn) =>
          If(apply(cnd), apply(thn), desugarCondBranches(xs))
        case CondProcBr(cnd, thnl) =>
          newIdentLet(apply(cnd)) {
            v => If(v, App(apply(thn), List(v)), desugarCondBranches(xs))
          }
      }
  }

  def desugarCaseBranches(comp: Expr, branches: List[CaseBranch]) = branches match {
    case Nil => Void()
    case x :: xs =>
      val CaseBranch(cases, thn) = x
      val xsCases = desugarCaseBranches(xs)
      cases.foldRight(xsCases) {
        case (e, xsCases) => If(App("eq?", List(comp, e)), thn, xsCases)
      }
  }

  def apply(expr: Expr) = expr match {
    case App(e1, param) => App(apply(e1), param map apply)
    case Lam(param, body) => Lam(param, apply(body))
    case If(cnd, thn, els) => If(apply(cnd), apply(thn), apply(els))
    case Cond(branches) => desugarCondBranches(branches)
    case Case(e, branches) => newIdentLet(e) { v => desugarCaseBranches(v, branches) }
    case Set_!(x, e) => Set_!(x, apply(e))
    case Begin(es) => ???
    case Define(x, s) => ???
    case _ => expr
  }
}
