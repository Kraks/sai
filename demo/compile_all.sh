#!/bin/bash
./llsc benchmarks/mp1m.ll demo_mp1m @f 20
./llsc benchmarks/quicksort.ll demo_qsort @main 0
./llsc benchmarks/bin_search.ll demo_binsearch @main 0
./llsc benchmarks/bubblesort.ll demo_bubble @main 0
./llsc benchmarks/kmpmatcher.ll demo_kmp @main 0
./llsc benchmarks/kth.ll demo_kth @main 0
./llsc benchmarks/knapsack.ll demo_knapsack @main 0
./llsc benchmarks/maze.ll demo_maze @main 2
./llsc benchmarks/mergesort.ll demo_msort @main 0
