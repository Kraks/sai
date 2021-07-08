package fusion

import sai.utils.Utils

trait FusionExp {
  def fused(): Int
  def manual(): Int
}

object MeanVarFusion extends FusionExp {
  val sz = 1000000

  def fused(): Int = {
    var x1 = 0
    var x2 = 0
    var x3 = 0
    while (x3 != sz) {
      val x4 = 1 + 2 * x3
      x1 = x1 + x4
      x2 = x2 + x4 * x4
      x3 = x3 + 1
    }
    val x5 = x1 / sz
    println(x5)
    println(x2 / sz - x5 * x5)
    0
  }

  def manual(): Int = {
    val constant = new Array[Int](sz)
    for (i <- (0 until sz)) {
      constant(i) = 1
    }
    val linear = new Array[Int](sz)
    for (i <- (0 until sz)) {
      linear(i) = 2 * i
    }
    val affine = new Array[Int](sz)
    for (i <- (0 until sz)) {
      affine(i) = constant(i) + linear(i)
    }
    var sum = 0
    for (i <- (0 until sz)) {
      sum += affine(i)
    }
    val m = sum / sz
    var ssum = 0
    for (i <- (0 until sz)) {
      ssum += affine(i) * affine(i)
    }
    val v = ssum / sz - m * m
    println(m)
    println(v)
    0
  }
}

object PtProd extends FusionExp {
  val sz = 1000000
  def fused(): Int = {
    val x1 = new Array[Int](sz)
    var x2 = 0
    while (x2 != sz) {
      val x3 = x2
      val x4 = 2 * x3 * (3 * x3)
      val x5 = x4 * x4
      x1(x3) = x5 * (x5 * x5)
      x2 = x2 + 1
    }
    println(x1(100))
    0
  }

  def manual(): Int = {
    /*
    val linear1 = Tensor(100) { i => 2 * i(0) }
    val linear2 = Tensor(100) { i => 3 * i(0) }
    val prod1 = Tensor(100) { i => linear1(i) * linear2(i) }
    val prod2 = Tensor(100) { i => prod1(i) * prod1(i) }
    val prod3 = Tensor(100) { i => prod2(i) * prod2(i) }
    val prod4 = Tensor(100) { i => prod2(i) * prod3(i) }
    */
    val linear1 = new Array[Int](sz)
    val linear2 = new Array[Int](sz)
    val prod1 = new Array[Int](sz)
    val prod2 = new Array[Int](sz)
    val prod3 = new Array[Int](sz)
    val prod4 = new Array[Int](sz)
    for (i <- (0 until sz)) {
      linear1(i) = 2 * i
    }
    for (i <- (0 until sz)) {
      linear2(i) = 3 * i
    }
    for (i <- (0 until sz)) {
      prod1(i) = linear1(i) * linear2(i)
    }
    for (i <- (0 until sz)) {
      prod2(i) = prod1(i) * prod1(i)
    }
    for (i <- (0 until sz)) {
      prod3(i) = prod2(i) * prod2(i)
    }
    for (i <- (0 until sz)) {
      prod4(i) = prod2(i) * prod3(i)
    }
    println(prod4(100))
    0
  }
}

object DotProd extends FusionExp {
  val sz = 1000000
  def fused(): Int = {
    var x1 = 0
    var x2 = 0
    while (x2 != sz) {
      val x3 = x2
      x1 = x1 + 2 * x3 * (3 * x3)
      x2 = x2 + 1
    }
    println(x1)
    0
  }
  def manual(): Int = {
    /*
    val linear1 = Tensor(100) { i => 2 * i(0) }
    val linear2 = Tensor(100) { i => 3 * i(0) }
    val prod = Tensor(100) { i => linear1(i) * linear2(i) }
    val sum = Sum(prod.shape) { i => prod(i) }
    */
    val linear1 = new Array[Int](sz)
    val linear2 = new Array[Int](sz)
    for (i <- 0 until sz) {
      linear1(i) = 2 * i
    }
    for (i <- 0 until sz) {
      linear2(i) = 3 * i
    }
    val prod = new Array[Int](sz)
    for (i <- 0 until sz) {
      prod(i) = linear1(i) * linear2(i)
    }
    var sum = 0
    for (i <- 0 until sz) {
      sum += prod(i)
    }
    println(sum)
    0
  }
}

object SumSquareEven extends FusionExp {
  val sz = 1000000
  /* by Luke
   implicit class TensorOps(x: Tensor1) {
      def apply(y: SEQ) = tensor_apply(x,y)
      def shape = tensor_shape(x)
    }
    // val constant = Tensor1(SEQ(100), { i => 1 })
    val linear   = Tensor1(SEQ(100), { i => 2*i(0) })
    // val affine   = Tensor1(SEQ(100), { i => constant(i) + linear(i) })
    def square(x: INT)       = x*x
    def filter(x: INT)       = IF (x % 2 == 0) (x) (0)
    def res(x: Tensor1)      = Sum(x.shape, { i => square(filter(x(i))) })
    val data = linear
    val m = res(data)
    PRINT(m)
  */
  def fused(): Int = {
    val x1 = new Array[Int](sz)
    var x2 = 0
    var x4 = 0
    while (x2 != sz) {
      val x3 = if (x2 % 2 == 0) x2 else 0
      x4 = x4 + (x3 * x3)
      x2 = x2 + 1
    }
    println(x4)
    0
  }
  def manual(): Int = {
    val linear = new Array[Int](sz)
    for (i <- (0 until sz)) {
      linear(i) = i
    }
    val t1 = new Array[Int](sz)
    for (i <- (0 until sz)) {
      if (linear(i) % 2 == 0) {
        t1(i) = linear(i)
      } else {
        t1(i) = 0
      }
    }
    val t2 = new Array[Int](sz)
    for (i <- (0 until sz)) {
      t2(i) = t1(i) * t1(i)
    }
    var res = 0
    for (i <- (0 until sz)) {
      res = res + t2(i)
    }
    println(res)
    0
  }
}

object FusionExp {
  def main(args: Array[String]) = {
    val n = 20
    def time[R](b: => R) = Utils.time(n)(b)
    def runExp(e: FusionExp): Unit = {
      val lpTime = time { e.fused() }
      println(lpTime)
      val nolpTime = time { e.manual() }
      println(nolpTime)
    }
    runExp(MeanVarFusion)
    runExp(PtProd)
    runExp(DotProd)
    runExp(SumSquareEven)
  }
}
