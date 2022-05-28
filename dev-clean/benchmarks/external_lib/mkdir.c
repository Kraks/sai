#include <fcntl.h>
#include <sys/stat.h>

/* NOTE: depends on stat <2022-05-28, David Deng> */
int main()
{
  char dirname[] = "new_dir";
  struct stat sfile;
  if (mkdir(dirname, 0644) != 0) {
    sym_exit(1);
  } else if (stat(dirname, &sfile) != 0) {
    // stat should be successful
    sym_exit(2);
  } else if (!S_ISDIR(sfile.st_mode)) {
    // file should be a directory
    sym_exit(3);
  } else {
    sym_exit(0);
  }
}
