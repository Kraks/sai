#ifdef KLEE
#include <klee/klee.h>
#endif
#include <errno.h>
#include <fcntl.h>

int main()
{
  char filename[] = "A";
  int fd = open(filename, O_RDONLY);
  if (fd == -1) {
    // no parameter
    // errno should be set
    llsc_assert_eager(errno == EACCES);
    sym_exit(1);
  } else if (close(fd) == 0) {
    // --add-sym-file A
    // file is opened and closed
    sym_exit(0);
  } else {
    // file is opened but not closed, should be unreachable
    sym_exit(2);
  }
}
