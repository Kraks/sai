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

  def intlit: Parser[IntLit] = INT10 ^^ { IntLit(_) }
  def boollit: Parser[BoolLit] = (TRUE | FALSE) ^^ { BoolLit(_) }
  def expr: Parser[Expr] = intlit | boollit | app | variable | lam 
}