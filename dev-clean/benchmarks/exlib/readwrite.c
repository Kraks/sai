#ifdef KLEE
#include <klee/klee.h>
#endif
#include <fcntl.h>
#include <unistd.h>
#include <assert.h>
#include <stdio.h>

int main(int argc, char *argv[])
{
  char filename[] = "a.txt";
/* #ifdef KLEE */
/*   klee_make_symbolic(&filename, 15, "filename"); */
/* #else */
/*   make_symbolic(&filename, 15); */
/* #endif */
  int status;
  int fd; 
  fd = open(filename, O_WRONLY);
  if (fd == -1) {
    printf("failed to open file %s\n", filename);
    return 1;
  } 
  printf("successfully opened file %s\n", filename);
  if ((status = write(fd, "abc", 3)) != 3) {
    printf("failed to write, returned %d\n", status);
    return 2;
  }
  close(fd);
  fd = open(filename, O_RDONLY);
  if (fd == -1) {
    printf("failed to open file %s\n", filename);
    return 1;
  } 
  char buf[4];
  buf[3] = '\0';
  if ((status = read(fd, buf, 3)) < 0) {
    printf("failed to read, returned %d\n", status);
    return 3;
  }

  printf("Buffer: %s\n", buf);

  if (buf[0] == 'a') {
    if (buf[1] == 'b') {
      if (buf[2] == 'c') {
        printf("correct branch reached");
      } else {
        printf("Shouldn't reach branch because buf[2] is 'c'");
      }
    } else {
      printf("Shouldn't reach branch because buf[1] is 'b'");
    }
  } else {
    printf("Shouldn't reach branch because buf[0] is 'a'");
  }
  close(fd);
  return 0;
}
