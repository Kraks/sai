#include "../../headers/llsc_client.h"

static bool __isprint(const char c) {
  /* Assume ASCII */
  return (32 <= c && c <= 126);
}

int main() {
  int x, y, z;
  make_symbolic(&x, sizeof(x));
  make_symbolic(&y, sizeof(y));
  char t;
  make_symbolic(&t, sizeof(t));
  llsc_assume(__isprint(t));
  z = llsc_range(0, 10, "z");
  llsc_assert_eager((z >= 0) && (z < 10));
  llsc_assume(x < y);
  if (x >= y) {
    print_string("Unreachable\n");
  }
  sym_print(x, y, z);
}
