package sai.oopsla19.parser

/* Author: Yuxuan Chen */

import scala.util.parsing.combinator._
import scala.io.Source

import sai.oopsla19.utils.TestTrait
import sai.oopsla19.parser.ASTUtils._

trait SchemeParserTrait extends SchemeTokenParser {
  def id[T](x: T) = x

  implicit def variable: Parser[Var] = IDENT ^^ { Var(_) }

  implicit def app: Parser[App] = LPAREN ~> expr ~ expr.* <~ RPAREN ^^ {
    case e ~ param => App(e, param)
  }

  implicit def lam: Parser[Lam] = LPAREN ~> LAMBDA ~> (LPAREN ~> IDENT.* <~ RPAREN) ~ implicit_begin <~ RPAREN ^^ {
    case args ~ body => Lam(args, body)
  }

  implicit def bind: Parser[Bind] = LPAREN ~> IDENT ~ implicit_begin <~ RPAREN ^^ {
    case id ~ e => Bind(id, e)
  }

  implicit def lets: Parser[Expr] = let | letstar | letrec | letproc

  implicit def let: Parser[App] = LPAREN ~> LET ~> (LPAREN ~> bind.+ <~ RPAREN) ~ implicit_begin <~ RPAREN ^^ {
    case binds ~ body => Let(binds, body).toApp
  }

  implicit def letproc: Parser[App] = LPAREN ~> LET ~> IDENT ~ (LPAREN ~> bind.+ <~ RPAREN) ~ implicit_begin <~ RPAREN ^^ {
    case ident ~ binds ~ body =>
      Lrc(List(Bind(ident, Lam(binds.map(_.x), body))), App(Var(ident), binds.map(_.e))).toApp
  }

  implicit def letstar: Parser[App] = LPAREN ~> LETSTAR ~> (LPAREN ~> bind.+ <~ RPAREN) ~ implicit_begin <~ RPAREN ^^ {
    case binds ~ body =>
      binds.dropRight(1).foldRight (Let(List(binds.last), body).toApp) { case (bd, e) => Let(List(bd), e).toApp }
  }

  implicit def letrec: Parser[App] = LPAREN ~> LETREC ~> (LPAREN ~> bind.+ <~ RPAREN) ~ implicit_begin <~ RPAREN ^^ {
    case binds ~ body => Lrc(binds, body).toApp
  }
  implicit def complex: Parser[App] = floatlit ~ floatlit <~ "i" ^^ {
    case r ~ i => App(Var("vector"), List(r, i))
  }

  implicit def intlit: Parser[IntLit] = INT10 ^^ { IntLit(_) }
  implicit def floatlit: Parser[FloatLit] = FLOAT ^^ { FloatLit(_) }
  implicit def boollit: Parser[BoolLit] = (TRUE | FALSE) ^^ { BoolLit(_) }
  implicit def charlit: Parser[CharLit] = CHARLIT ^^ {
    case s => CharLit(s.charAt(2))
  }
  implicit def stringlit: Parser[App] = STRINGLIT ^^ {
    case str =>
      val elements: List[CharLit] = str.toCharArray map { CharLit(_) } toList;
      App(Var("vector"), elements.drop(1).dropRight(1))
  }

  implicit def vecsugar: Parser[App] = VECLPAREN ~> expr.* <~ RPAREN ^^ {
    case elements => App(Var("vector"), elements)
  }

  implicit def literals = complex | floatlit | intlit | charlit | boollit | stringlit | vecsugar

  implicit def ifthel: Parser[If] = LPAREN ~> IF ~> expr ~ expr ~ expr <~ RPAREN ^^ {
    case cond ~ thn ~ els => If(cond, thn, els)
  }

  implicit def condBranch: Parser[CondBr] = LPAREN ~> expr ~ implicit_begin <~ RPAREN ^^ {
    case cond ~ thn => CondBr(cond, thn)
  }
  implicit def condElseBranch: Parser[CondBr] = LPAREN ~> ELSE ~> implicit_begin <~ RPAREN ^^ {
    case thn => CondBr(BoolLit(true), thn)
  }
  implicit def condProcBranch: Parser[CondProcBr] = LPAREN ~> expr ~ (RARROW ~> implicit_begin) <~ RPAREN ^^ {
    case cond ~ proc => CondProcBr(cond, proc)
  }
  implicit def condBranches = condElseBranch | condBranch | condProcBranch
  implicit def cond: Parser[Cond] = LPAREN ~> COND ~> condBranches.* <~ RPAREN ^^ {
    case branches => Cond(branches)
  }

  implicit def caseBranch: Parser[CaseBranch] = LPAREN ~> (LPAREN ~> expr.* <~ RPAREN) ~ implicit_begin <~ RPAREN ^^ {
    case cases ~ thn => CaseBranch(cases, thn)
  }
  implicit def caseElseBranch: Parser[CaseBranch] = LPAREN ~> ELSE ~> implicit_begin <~ RPAREN ^^ {
    case thn => CaseBranch(List(), thn)
  }
  implicit def cas: Parser[Case] = LPAREN ~> CASE ~> implicit_begin ~ (caseElseBranch | caseBranch).* <~ RPAREN ^^ {
    case ev ~ branches => Case(ev, branches)
  }

  implicit def dispatch = ifthel | cond | cas

  implicit def void: Parser[Void] = LPAREN ~> VOID <~ RPAREN ^^ { _ => Void() }

  implicit def define: Parser[Define] = LPAREN ~> DEF ~> IDENT ~ implicit_begin <~ RPAREN ^^ {
    case id ~ e => Define(id, e)
  }

  implicit def definefunc: Parser[Define] = LPAREN ~> DEF ~> (LPAREN ~> IDENT.+ <~ RPAREN) ~ implicit_begin <~ RPAREN ^^ {
    case idents ~ e => Define(idents.head, Lam(idents.tail, e))
  }

  implicit def set: Parser[Set_!] = LPAREN ~> SET ~> IDENT ~ implicit_begin <~ RPAREN ^^ {
    case id ~ e => Set_!(id, e)
  }

  implicit def begin: Parser[Begin] = LPAREN ~> BEGIN ~> expr.* <~ RPAREN ^^ {
    case exps => Begin(exps)
  }

  implicit def implicit_begin: Parser[Expr] = expr.+ ^^ {
    case e :: Nil => e
    case exps @ (e :: es) => Begin(exps)
  }

  implicit def imp_structure: Parser[Expr] = void | define | definefunc | set | begin

  implicit def quasiquote: Parser[Expr] = QUASIQUOTE ~> quasiterm ^^ id

  implicit def quote: Parser[Expr] = LPAREN ~> QUOTE ~> quasiterm <~ RPAREN ^^ id

  implicit def symbol: Parser[SSym] = SYMBOL ^^ { SSym(_) }

  implicit def list: Parser[App] = LPAREN ~> quasiterm.* <~ RPAREN ^^ {
    case terms => App(Var("list"), terms)
  }
  implicit def unquote: Parser[Expr] = UNQUOTE ~> expr ^^ id

  implicit def quasiterm = literals | unquote | list | symbol

  def expr: Parser[Expr] = literals | quasiquote | quote | variable | lam | lets | dispatch | imp_structure | app

  def program = implicit_begin
}

object SchemeParser extends SchemeParserTrait {
  def apply(input: String): Option[Expr] = apply(program, input)

  def apply[T](pattern: Parser[T], input: String): Option[T] = parse(pattern, input) match {
    case Success(matched, _) => Some(matched)
    case e => println(e); None
  }
}

object SchemeParserTest extends TestTrait {

  def testPrettyPrinter = {
    assert(prettyPrint(CharLit('a')) == "#\\a")
    assert(prettyPrint(App(Lam(List("x", "y"),
      App(Var("+"), List(Var("x"), Var("y")))), List(IntLit(1), IntLit(3)))) ==
      "((lambda (x y) (+ x y)) 1 3)")
    assert(prettyPrint(If(BoolLit(false), Var("a"), Lam(List("t"), Var("t")))) ==
      "(if #f a (lambda (t) t))")
  }

  def testDesugar = {
    assert(SchemeASTDesugar(IntLit(1)) == IntLit(1))
    prettyPrint(SchemeASTDesugar(
      Begin(List(Define("x", IntLit(2)), Set_!("x", IntLit(3)), Var("x")))))
    prettyPrint(SchemeASTDesugar(
      Cond(List(
        CondBr(
          App(Var("positive?"),List(IntLit(-5))),
          App(Var("error"),List())),
        CondBr(App(Var("zero?"),List(IntLit(-5))),App(Var("error"),List())),
        CondBr(App(Var("positive?"),List(IntLit(5))),SSym("here"))))))
    prettyPrint(SchemeASTDesugar(
      Case(IntLit(3), List(
        CaseBranch(List(IntLit(3), IntLit(4), IntLit(5)), BoolLit(true)),
        CaseBranch(List(App(Lam(List(), IntLit(7)), List()), IntLit(6)), BoolLit(false))))))

    val Some(ast) = SchemeParser("(define (pow a b) (if (eq? b 0) 1 (* a (pow a (- b 1))))) (pow 3 5)")
    prettyPrint(SchemeASTDesugar(ast))
    val Some(begin_in_begin) = SchemeParser("(begin (begin a b) c d)")
    prettyPrint(SchemeASTDesugar(begin_in_begin))
  }

  def main(args: Array[String]) = {
    if (args.isEmpty) {
      runtest()
    } else {
      if (args(0) == "-f") {
        println(SchemeParser(Source.fromFile(args(1)).mkString))
      } else if (args(0) == "-t") {
        runtest(args(1))
      } else {
        println(SchemeParser(args(0)))
      }
    }
  }

  override def testall() = {
    test("quasiquote") {
      assert(SchemeParser("'xxxx") == Some(SSym("xxxx")))
      assert(SchemeParser("'(a 1 ,(a b))")
        == Some(App(Var("list"),List(SSym("a"), IntLit(1), App(Var("a"),List(Var("b")))))))
    }

    test("letrec_to_set") {
      val actual = SchemeParser("(letrec ([a 3] [b a]) (add a b))")
      val expected = Some(
        App(
          Lam(List("a", "b"),
            Begin(
              List(
                Set_!("a",IntLit(3)),
                Set_!("b",Var("a")),
                App(Var("add"),List(Var("a"), Var("b")))
              )
            )
          ),
        List(Void(), Void())))
      assert(actual == expected)
    }

    test("implicit") {
      val actual = SchemeParser("(add a b) (add a b)")
      val expected = Some(
        Begin(List(
          App(Var("add"), List(Var("a"), Var("b"))),
          App(Var("add"), List(Var("a"), Var("b")))
        ))
      )
      assert(actual == expected)
    }

    test("arith") {
      val actual = SchemeParser("(+ (- a b) (* (/ 2 3) 4))")
      val expected = Some(
        App(Var("+"), List(
          App(Var("-"), List(Var("a"), Var("b"))),
          App(Var("*"), List(App(Var("/"), List(IntLit(2), IntLit(3))), IntLit(4)))))
      )
      assert(actual == expected)
    }

    test("define_proc") {
      val actual = SchemeParser("(define (f a b) (+ a b))")
      val expected = Some(Define("f", Lam(List("a", "b"), App(Var("+"), List(Var("a"), Var("b"))))))
      assert(actual == expected)
    }

    test("cond") {
      val actual = SchemeParser(
        """(cond
            [(positive? -5) (error 1)]
            [(zero? -5) (error 2)]
            [(positive? 5) 'here])""")
      val expected = Some(Cond(List(
        CondBr(App(Var("positive?"),List(IntLit(-5))),App(Var("error"),List(IntLit(1)))),
        CondBr(App(Var("zero?"),List(IntLit(-5))),App(Var("error"),List(IntLit(2)))),
        CondBr(App(Var("positive?"),List(IntLit(5))),SSym("here")))))
      assert(actual == expected)
    }

    test("toplas98_boyer") {
      val fileName = "benchmarks/scm/toplas98/boyer.sch"
      val program = Source.fromFile(fileName).mkString
      assert(SchemeParser(program) != None)
    }

    test("toplas98_nbody_comments") {
      val fileName1 = "benchmarks/scm/toplas98/nbody.sch"
      val fileName2 = "benchmarks/scm/toplas98/nbody-processed.sch"
      val program1 = Source.fromFile(fileName1).mkString
      val program2 = Source.fromFile(fileName2).mkString

      assert(SchemeParser(program1) == SchemeParser(program2))
    }

    test("toplas98_lattice_comments") {
      val fileName1 = "benchmarks/scm/toplas98/lattice.scm"
      val fileName2 = "benchmarks/scm/toplas98/lattice-processed.scm"
      val program1 = Source.fromFile(fileName1).mkString
      val program2 = Source.fromFile(fileName2).mkString

      assert(SchemeParser(program1) == SchemeParser(program2))
    }

    test("bool") {
      val t = "#t"
      val T = "#T"
      val f = "#f"
      val F = "#F"
      assert(SchemeParser(t) == Some(BoolLit(true)))
      assert(SchemeParser(T) == Some(BoolLit(true)))
      assert(SchemeParser(f) == Some(BoolLit(false)))
      assert(SchemeParser(F) == Some(BoolLit(false)))
    }

    test("float") {
      assert(SchemeParser("3.14") == Some(FloatLit(3.14)))
      assert(SchemeParser("-3.14") == Some(FloatLit(-3.14)))
      assert(SchemeParser("0.00000") == Some(FloatLit(0.0)))
    }

    test("complex") {
      assert(SchemeParser("3.14+2.7i") == Some(App(Var("vector"), List(FloatLit(3.14), FloatLit(2.7)))))
      assert(SchemeParser("-3.14-2.7i") == Some(App(Var("vector"), List(FloatLit(-3.14), FloatLit(-2.7)))))
    }
  }
}
