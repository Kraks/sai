int main(int argc, char *argv[])
{
  print_string("argc");
  sym_print(argc);
  print_string("argv");
  sym_print(argv);
  for (int i = 0; i < argc; ++i) {
    print_string(argv[i]);
  }
  return 0;
}
