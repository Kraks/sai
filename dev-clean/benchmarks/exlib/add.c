#ifdef KLEE
#include <klee/klee.h>
#endif

int add(int x, int y) {
  return x + y;
}

int main() {
  int a,b;
#ifdef KLEE
  klee_make_symbolic(&a, sizeof(a), "variable a");
  klee_make_symbolic(&b, sizeof(b), "variable b");
#else
  make_symbolic(&a, sizeof(a));
  make_symbolic(&b, sizeof(b));
#endif
  if (a < b) {
    return add(a,b);
  } else if (a == b) {
    return b;
  } else {
    return a - b;
  }
}
