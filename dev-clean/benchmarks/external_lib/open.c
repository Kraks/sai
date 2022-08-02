#ifdef KLEE
#include <klee/klee.h>
#endif
#include <errno.h>
#include <fcntl.h>

int main()
{
  // --add-sym-file A
  int fd;

  fd = -1; 
  fd = open("A", O_RDONLY);
  llsc_assert_eager(fd != -1); // open should succeed
  llsc_assert_eager(close(fd) == 0); // close should succeed

  fd = 0;
  fd = open("B", O_RDONLY);
  llsc_assert_eager(fd == -1); // open should fail
  llsc_assert_eager(errno == EACCES);

  fd = 0;
  fd = open("A", O_CREAT | O_EXCL);
  llsc_assert_eager(fd == -1); // open should fail
  llsc_assert_eager(errno == EEXIST);
}
