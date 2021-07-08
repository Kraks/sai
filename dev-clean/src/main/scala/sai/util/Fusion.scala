package fusion

import sai.utils.Utils

object MeanVarFusion {
  val sz = 40000

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

object FusionExp {
  def main(args: Array[String]) = {
    val n = 20
    def time[R](b: => R) = Utils.time(n)(b)
    val lpTime = time {
      MeanVarFusion.fused
    }
    println(lpTime)
    val nolpTime = time {
      MeanVarFusion.manual
    }
    println(nolpTime)
  }
}
