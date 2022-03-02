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

void print_string(const char *message);

/* llsc_report_error - Report a user defined error and terminate the current
 * llsc process.
 *
 * \arg file - The filename to report in the error message.
 * \arg line - The line number to report in the error message.
 * \arg message - A string to include in the error message.
 * \arg suffix - The suffix to use for error files.
 */
__attribute__((noreturn))
static inline void llsc_report_error(const char *file,
		 int line,
		 const char *message,
		 const char *suffix)  {
  print_string(file);
  sym_print(line);
  print_string(message);
  print_string(suffix);
  stop(-1);
}

static inline void llsc_warning(const char *message) {
  print_string(message);
}

/* Support for runing test-comp examples */

static inline void __VERIFIER_error(void) { llsc_assert_eager(0); }
static inline void __VERIFIER_assert(int cond) { llsc_assert_eager(cond); }
static inline void __VERIFIER_assume(int x) { /* TODO */ }

static inline int __VERIFIER_nondet_int(void) {
  int x;
  make_symbolic_whole(&x, sizeof(int));
  return x;
}

static inline unsigned int __VERIFIER_nondet_uint(void) {
  unsigned int x;
  make_symbolic_whole(&x, sizeof(x));
  return x;
}

typedef unsigned int u32;
static inline u32 __VERIFIER_nondet_u32(void) {
  return __VERIFIER_nondet_uint();
}

static inline unsigned __VERIFIER_nondet_unsigned(void) {
  unsigned x;
  make_symbolic_whole(&x, sizeof(x));
  return x;
}

static inline short __VERIFIER_nondet_short(void) {
  short x;
  make_symbolic_whole(&x, sizeof(x));
  return x;
}

static inline unsigned short __VERIFIER_nondet_ushort(void) {
  unsigned short x;
  make_symbolic_whole(&x, sizeof(x));
  return x;
}

static inline char __VERIFIER_nondet_char(void) {
  char x;
  make_symbolic_whole(&x, sizeof(x));
  return x;
}

static inline unsigned char __VERIFIER_nondet_uchar(void) {
  unsigned char x;
  make_symbolic_whole(&x, sizeof(x));
  return x;
}

static inline long __VERIFIER_nondet_long(void) {
  long x;
  make_symbolic_whole(&x, sizeof(x));
  return x;
}

static inline unsigned long __VERIFIER_nondet_ulong(void) {
  unsigned long x;
  make_symbolic_whole(&x, sizeof(x));
  return x;
}

/* Note: to be supported...
char* __VERIFIER_nondet_pchar(void) { }
float __VERIFIER_nondet_float(void) { }
double __VERIFIER_nondet_double(void) { }
void* __VERIFIER_nondet_pointer(void) { }
_Bool __VERIFIER_nondet_bool(void) { }
*/

#endif
