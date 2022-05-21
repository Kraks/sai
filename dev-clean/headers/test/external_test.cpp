
#include <iostream>
#include <assert.h>
#include "../llsc.hpp"

PtrVal intV_0 = make_IntV(0);
PtrVal intV_1 = make_IntV(1);
PtrVal intV_2 = make_IntV(2);
PtrVal intV_3 = make_IntV(3);
PtrVal intV_4 = make_IntV(4);
PtrVal intV_5 = make_IntV(5);
PtrVal intV_6 = make_IntV(6);
PtrVal intV_7 = make_IntV(7);
PtrVal intV_8 = make_IntV(8);
PtrVal intV_9 = make_IntV(9);
        
std::monostate test(int x0) {
// test read_at;
immer::flex_vector<PtrVal> x1 = immer::flex_vector<PtrVal>{intV_0, intV_1, intV_2};
immer::flex_vector<PtrVal> x2 = File("A", x1).content.drop(0);
immer::flex_vector<PtrVal> x3 = x2.take(2);
immer::flex_vector<PtrVal> x4 = x1.take(2);
// assertEq;
ASSERT(x3 == x4, "read_at");
return std::monostate{};
}

int main(int argc, char *argv[]) {
  test(0);
  return 0;
} 
