#include <klee/klee.h>

int f() {
int x0; klee_make_symbolic(&x0, sizeof(x0), "x0"); 
int x1; klee_make_symbolic(&x1, sizeof(x1), "x1"); 
int x2; klee_make_symbolic(&x2, sizeof(x2), "x2"); 
int x3; klee_make_symbolic(&x3, sizeof(x3), "x3"); 
int x4; klee_make_symbolic(&x4, sizeof(x4), "x4"); 
int x5; klee_make_symbolic(&x5, sizeof(x5), "x5"); 
int x6; klee_make_symbolic(&x6, sizeof(x6), "x6"); 
int x7; klee_make_symbolic(&x7, sizeof(x7), "x7"); 
int x8; klee_make_symbolic(&x8, sizeof(x8), "x8"); 
int x9; klee_make_symbolic(&x9, sizeof(x9), "x9"); 
int x10; klee_make_symbolic(&x10, sizeof(x10), "x10"); 
int x11; klee_make_symbolic(&x11, sizeof(x11), "x11"); 
int x12; klee_make_symbolic(&x12, sizeof(x12), "x12"); 
int x13; klee_make_symbolic(&x13, sizeof(x13), "x13"); 
int x14; klee_make_symbolic(&x14, sizeof(x14), "x14"); 
int x15; klee_make_symbolic(&x15, sizeof(x15), "x15"); 
if (x0 > 0) {
  x0 = x9 + x10 + 60;
  x1 = x8 + x9 + 60;
}
if (x1 > 1) {
  x1 = x9 + x9 + 65;
  x2 = x7 + x8 + 65;
}
if (x2 > 2) {
  x2 = x7 + x15 + 32;
  x3 = x2 + x3 + 32;
}
if (x3 > 3) {
  x3 = x10 + x9 + 15;
  x4 = x15 + x1 + 15;
}
if (x4 > 4) {
  x4 = x6 + x7 + 16;
  x5 = x2 + x3 + 16;
}
if (x5 > 5) {
  x5 = x8 + x14 + 17;
  x6 = x3 + x14 + 17;
}
if (x6 > 6) {
  x6 = x1 + x8 + 17;
  x7 = x6 + x3 + 17;
}
if (x7 > 7) {
  x7 = x13 + x14 + 73;
  x8 = x14 + x11 + 73;
}
if (x8 > 8) {
  x8 = x7 + x9 + 36;
  x9 = x5 + x13 + 36;
}
if (x9 > 9) {
  x9 = x10 + x9 + 86;
  x10 = x3 + x7 + 86;
}
if (x10 > 10) {
  x10 = x7 + x1 + 11;
  x11 = x7 + x1 + 11;
}
if (x11 > 11) {
  x11 = x12 + x0 + 55;
  x12 = x2 + x11 + 55;
}
if (x12 > 12) {
  x12 = x11 + x8 + 39;
  x13 = x8 + x7 + 39;
}
if (x13 > 13) {
  x13 = x6 + x7 + 58;
  x14 = x6 + x7 + 58;
}
if (x14 > 14) {
  x14 = x6 + x4 + 77;
  x15 = x6 + x14 + 77;
}
if (x15 > 15) {
  x15 = x8 + x7 + 72;
  x6 = x9 + x8 + 72;
}
klee_assert(0);
return x10 + x10;
}

int main() {
  int r = f();
  return r;
}
