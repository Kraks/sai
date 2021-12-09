#ifdef KLEE
#include <klee/klee.h>
#endif
int main()
{
  int a;
#ifdef KLEE
  klee_make_symbolic(&a, sizeof(a), "a");
#else
  make_symbolic(&a, sizeof(a));
#endif
  if (a) {
    printf("a is truthy");
  } else {
    printf("a is falsy");
  }
  return 0;
}
