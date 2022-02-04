int main () {
  static int i1;
  int i2;
  int *p1 = &i1, *p2 = &i2;
  int sub = (int) p1 - (int) p2;
  return sub;
}