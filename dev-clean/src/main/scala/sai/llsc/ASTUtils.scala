package sai.llsc

import sai.lang.llvm._
import sai.lang.llvm.IR._
import sai.lang.llvm.parser.Parser._

object ASTUtils {
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

  def getPrimitiveTypeManifest(vt: LLVMType): Manifest[_] = vt match {
    case IntType(1) => manifest[Boolean]
    case IntType(8) => manifest[Char]
    case IntType(16) => manifest[Short]
    case IntType(32) => manifest[Int]
    case IntType(64) => manifest[Long]
    case FloatType(FK_Float) => manifest[Float]
    case FloatType(FK_Double) => manifest[Double]
    case PtrType(IntType(1), addrSpace) => manifest[Array[Boolean]]
    case PtrType(IntType(8), addrSpace) => manifest[Array[Char]]
    case PtrType(IntType(16), addrSpace) => manifest[Array[Short]]
    case PtrType(IntType(32), addrSpace) => manifest[Array[Int]]
    case PtrType(IntType(64), addrSpace) => manifest[Array[Long]]
    case _ => ???
  }

  def getPrimitiveTypeName(vt: LLVMType): String = vt match {
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

object Constants {
  final val BYTE_SIZE: Int = 8
  final val DEFAULT_INT_BW: Int = BYTE_SIZE * 4
  final val DEFAULT_ADDR_BW: Int = BYTE_SIZE * 8
  final val DEFAULT_INDEX_BW: Int = BYTE_SIZE * 8
  final val ARCH_WORD_SIZE: Int = 64
}
