#include <fcntl.h>
#include <unistd.h>
#include <assert.h>
#include <stdio.h>

int main()
{
  char filename[] = "A";
  char buf[5];
  int nbytes, fd;
  fd = open(filename, O_WRONLY);
  /* ASSERT(fd != -1, "Should open successfully"); */
  nbytes = read(fd, buf, 3);
  /* ASSERT(nbytes == 3, "Should read exactly 3 bytes"); */
  if (buf[0] == 'a') {
    if (buf[1] == 'b') {
      if (buf[2] == 'c') {
        printf("correct branch reached");
      } else {
        printf("alternative branch 3");
      }
    } else {
      printf("alternative branch 2");
    }
  } else {
    printf("alternative branch 1");
  }
  close(fd);
  return 0;
}
