#ifndef LLSC_CLIENT_HEADERS
#define LLSC_CLIENT_HEADERS

#include <stddef.h>
#include <stdbool.h>

// TODO: support assigning names for symbolic values

/* Construct `byte_size` 8-bitvectors starting at address `addr`.
 */
void make_symbolic(void* addr, size_t byte_size);

/* Construct a single bitvector of size `byte_size`*8 at address `addr`.
 */
void make_symbolic_whole(void* addr, size_t byte_size);

void llsc_assert(bool);
void llsc_assert_eager(bool);

/* Support for runing test-comp examples */

int __VERIFIER_nondet_int(void) {
  int x;
	make_symbolic_whole(&x, sizeof(int));
  return x;
}
void __VERIFIER_assert(int cond) {
  llsc_assert_eager(cond);
}

#endif
