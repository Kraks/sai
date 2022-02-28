#include "llsc.h"
void llsc_report_error(const char *file,
			 int line,
			 const char *message,
			 const char *suffix) {
  print_string(file);
  sym_print(line);
  print_string(message);
  print_string(suffix);
  stop(-1);
}

void llsc_warning(const char *message) {
  print_string(message);
}

int * __errno_location(void) {
  static int errorno;
  return &errorno;
}