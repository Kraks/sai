package sai.lang

/* The Simp Intermediate Langauge defined in:
 * https://users.ece.cmu.edu/~aavgerin/papers/Oakland10.pdf
 */

object SimpIL {
  case class Prog(stmts: List[Stmt])

  sealed trait Stmt
  case class Assign(x: String, e: Exp) extends Stmt
  case class Store(e1: Exp, e2: Exp) extends Stmt
  case class Goto(e: Exp) extends Stmt
  case class Assert(e: Exp) extends Stmt
  case class Cond(cnd: Exp, then_tgt: Exp, else_tgt: Exp) extends Stmt
  case class Halt(e: Exp) extends Stmt
  case class Output(str: String) extends Stmt

  sealed trait Exp
  case class Lit(x: Int) extends Exp {
    override def toString = x.toString
  }
  case class Var(x: String) extends Exp {
    override def toString = x
  }
  case class Load(e: Exp) extends Exp {
    override def toString = s"(load $e)"
  }
  case class BinOp(op: String, e1: Exp, e2: Exp) extends Exp {
    override def toString = s"($e1 $op $e2)"
  }
  case class UnaryOp(op: String, e: Exp) extends Exp {
    override def toString = s"($op $e)"
  }
  case class GetInput(src: String) extends Exp

  object Values {
    trait Value
    case class IntV(x: Int) extends Value
  }

  object Examples {
    val ex1 = Prog(List(
      Assign("x", BinOp("*", Lit(2), GetInput("stdin"))),
      Halt(Var("x"))
    ))

    val ex2 = Prog(List(
      Assign("x", BinOp("*", Lit(2), GetInput("stdin"))),
      Cond(BinOp("==", BinOp("-", Var("x"), Lit(5)), Lit(14)),
        Lit(2),
        Lit(3)),
      Assert(Lit(0)),
      Halt(Var("x"))))

    val ex3 = Prog(List(
      Assign("x", BinOp("*", Lit(2), GetInput("stdin"))),
      Assign("y", Lit(10)),
      Cond(BinOp("==", Var("x"), Lit(14)),
        Lit(3),
        Lit(5)),
      Output("then branch"),
      Assert(Lit(0)),
      Output("else branch"),
      Halt(Var("x"))))
  }
}
