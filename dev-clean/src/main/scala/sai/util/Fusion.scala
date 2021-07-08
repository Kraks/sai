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

object DotProd extends FusionExp {
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
    runExp(DotProd)
  }
}
