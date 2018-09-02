package sai.direct.large.parser

trait Expr

case class Var(x: String) extends Expr
case class App(e1: Expr, param: List[Expr]) extends Expr
case class Lam(param: List[String], body: Expr) extends Expr

case class Bind(x: String, e: Expr)
case class Let(x: String, e: Expr, body: Expr) extends Expr
case class Lrc(bds: List[Bind], body: Expr) extends Expr

case class IntLit(x: Int) extends Expr
case class BoolLit(x: Bool) extends Expr
case class If(cnd: Expr, thn: Expr, els: Expr) extends Expr
casd class Cond(branches: List[Pair[Expr, Expr]]) extends Expr