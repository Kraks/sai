package icse23

/* This file is used to test the algorithm benchmarks for
   ICSE 23 paper "Compiling Parallel Symbolic Execution with Continuations".
   The ICSE 23 paper presents GenSym, which is the successor of LLSC.
   See https://github.com/Generative-Program-Analysis/GenSym for more details.
*/

import sai.llsc._

import sai.lang.llvm._
import sai.lang.llvm.IR._
import sai.lang.llvm.parser.Parser._

import lms.core._
import lms.core.Backend._
import lms.core.utils.time
import lms.core.virtualize
import lms.macros.SourceContext
import lms.core.stub.{While => _, _}

import sai.lmsx._
import scala.collection.immutable.{List => StaticList}

import sys.process._
import org.scalatest.FunSuite

class CompileAlgo extends FunSuite {
    RunLLSC.runLLSC(parseFile("/icse23/GenSym/benchmarks/icse23/algorithms/kmpmatcher_llsc.ll"), "kmp", "@main")
    RunLLSC.runLLSC(parseFile("/icse23/GenSym/benchmarks/icse23/algorithms/mergesort_llsc.ll"), "mergeSort", "@main")
    RunLLSC.runLLSC(parseFile("/icse23/GenSym/benchmarks/icse23/algorithms/bubblesort_llsc.ll"), "bubbleSort", "@main")
    RunLLSC.runLLSC(parseFile("/icse23/GenSym/benchmarks/icse23/algorithms/knapsack_llsc.ll"), "knapsack", "@main")
    RunLLSC.runLLSC(parseFile("/icse23/GenSym/benchmarks/icse23/algorithms/nqueen_llsc.ll"), "nqueen", "@main")
    RunLLSC.runLLSC(parseFile("/icse23/GenSym/benchmarks/icse23/algorithms/quicksort_llsc.ll"), "quicksort", "@main")
}

