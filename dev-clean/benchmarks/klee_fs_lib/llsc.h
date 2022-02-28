#ifndef LLSC_HEADER_H
#define LLSC_HEADER_H

#include "stdint.h"
#include "stddef.h"
#include <stdbool.h>

  void print_string(const char *message);
  /* klee_report_error - Report a user defined error and terminate the current
   * KLEE process.
   *
   * \arg file - The filename to report in the error message.
   * \arg line - The line number to report in the error message.
   * \arg message - A string to include in the error message.
   * \arg suffix - The suffix to use for error files.
   */
  __attribute__((noreturn))
  void llsc_report_error(const char *file,
			 int line,
			 const char *message,
			 const char *suffix);
  void llsc_warning(const char *message);

  void make_symbolic(void *addr, size_t nbytes);
  void llsc_assert(bool);


#endif /* LLSC_HEADER_H */