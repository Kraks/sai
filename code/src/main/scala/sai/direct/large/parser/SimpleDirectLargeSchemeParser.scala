package sai.direct.large.parser

import scala.util.parsing.combinator._
import sai.common.parser._

trait SimpleDirectLargeSchemeParserTrait extends SchemeTokenParser {
  def variable: Parser[Var] = IDENT ^^ { Var(_) }
  def app: Parser[App] = LPAREN ~> expr ~ expr.* <~ RPAREN ^^ {
    case e ~ param => App(e, param)
  }

  def lam: Parser[Lam] = LPAREN ~> LAMBDA ~> (LPAREN ~> IDENT.* <~ RPAREN) ~ expr <~ RPAREN ^^ {
    case args ~ body => Lam(args, body)
  }

  def bind: Parser[Bind] = LPAREN ~> IDENT ~ expr <~ RPAREN ^^ {
    case id ~ e => Bind(id, e)
  }

  def let: Parser[Expr] = LPAREN ~> LET ~> (LPAREN ~> (LPAREN ~> IDENT ~ expr <~ RPAREN) <~ RPAREN) ~ expr <~ RPAREN ^^ {
    case id ~ e ~ body => Let(id, e, body)
  }

  def letrec: Parser[Lrc] = LPAREN ~> LETREC ~> (LPAREN ~> bind.+ <~ RPAREN) ~ expr <~ RPAREN ^^ {
    case binds ~ body => Lrc(binds, body)
  }

  def intlit: Parser[IntLit] = INT10 ^^ { IntLit(_) }

  def boollit: Parser[BoolLit] = (TRUE | FALSE) ^^ { BoolLit(_) }

  def ifthel: Parser[If] = LPAREN ~> IF ~> expr ~ expr ~ expr <~ RPAREN ^^ {
    case cond ~ thn ~ els => If(cond, thn, els)
  }

  def condBranch: Parser[CondBranch] = LPAREN ~> expr ~ expr <~ RPAREN ^^ {
    case cond ~ thn => CondBranch(cond, thn)
  }

  def condElseBranch: Parser[CondBranch] = LPAREN ~> ELSE ~> expr <~ RPAREN ^^ {
    case thn => CondBranch(BoolLit(true), thn)
  }
  
  def cond: Parser[Cond] = LPAREN ~> COND ~> (condElseBranch | condBranch).* <~ RPAREN ^^ {
    case branches => Cond(branches)
  }

  def expr: Parser[Expr] = intlit | boollit | app | variable | lam | let | letrec | ifthel | cond
}
