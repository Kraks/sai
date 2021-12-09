#include <stdio.h>
int main()
{
  FILE *f = fopen("A", "r");
  if (f) {
    print_string("Successfully opened file");
    fclose(f);
  } else {
    print_string("Failed to open file");
  }
  return 0;
}
