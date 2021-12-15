int main() {
  int* b = malloc(4);
  if (b) {
    print_string("malloc returned valid pointer");
  } else {
    print_string("malloc returned nullptr");
  }
}
