
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
/* test readAt */;
File x1 = File("A", immer::flex_vector<PtrVal>{intV_0, intV_1, intV_2});
immer::flex_vector<PtrVal> x2 = x1.content.drop(0);
immer::flex_vector<PtrVal> x3 = x2.take(2);
// assertEq;
ASSERT((x3 == immer::flex_vector<PtrVal>{intV_0, intV_1}), "readAt");
immer::flex_vector<PtrVal> x4 = x1.content.drop(1);
immer::flex_vector<PtrVal> x5 = x4.take(4);
// assertEq;
ASSERT((x5 == immer::flex_vector<PtrVal>{intV_1, intV_2}), "readAt with more bytes");
immer::flex_vector<PtrVal> x6 = x1.content.drop(0);
immer::flex_vector<PtrVal> x7 = x6.take(0);
// assertEq;
ASSERT((x7 == immer::flex_vector<PtrVal>{}), "readAt with no bytes");
/* test size */;
int x8 = File("A", immer::flex_vector<PtrVal>{intV_0, intV_1, intV_2}).content.size();
// assertEq;
ASSERT((x8 == 3), "size of non-empty file");
int x9 = File("B").content.size();
// assertEq;
ASSERT((x9 == 0), "size of an empty file");
/* test clear */;
File x10 = File("A", immer::flex_vector<PtrVal>{intV_0, intV_1, intV_2});
x10.content = immer::flex_vector<PtrVal>{};
int x11 = x10.content.size();
// assertEq;
ASSERT((x11 == 0), "clear should result in empty file");
/* test writeAt */;
File x12 = File("A", immer::flex_vector<PtrVal>{intV_0, intV_1, intV_2});
File x13 = File("A", immer::flex_vector<PtrVal>{intV_0, intV_1, intV_2});
File x14 = File("A", immer::flex_vector<PtrVal>{intV_0, intV_1, intV_2});
immer::flex_vector<PtrVal> x15 = immer::flex_vector<PtrVal>{intV_4};
// File.writeAt;
int x16 = x12.content.size();
int x17 = 5 - x16;
if (x17 > 0) {
immer::flex_vector<PtrVal> x18 = immer::flex_vector<PtrVal>(x17, intV_0);
immer::flex_vector<PtrVal> x19 = x12.content + x18;
x12.content = x19;
}
// File.writeAtNoFill;
immer::flex_vector<PtrVal> x20 = x12.content.take(5);
immer::flex_vector<PtrVal> x21 = x20 + x15;
int x22 = x15.size();
immer::flex_vector<PtrVal> x23 = x12.content.drop(5 + x22);
immer::flex_vector<PtrVal> x24 = x21 + x23;
x12.content = x24;
// assertEq;
ASSERT((x12.content == immer::flex_vector<PtrVal>{intV_0, intV_1, intV_2, intV_0, intV_0, intV_4}), "write after the end of the file, a hole should be created");
immer::flex_vector<PtrVal> x25 = immer::flex_vector<PtrVal>{intV_4};
// File.writeAt;
int x26 = x13.content.size();
int x27 = 3 - x26;
if (x27 > 0) {
immer::flex_vector<PtrVal> x28 = immer::flex_vector<PtrVal>(x27, intV_0);
immer::flex_vector<PtrVal> x29 = x13.content + x28;
x13.content = x29;
}
// File.writeAtNoFill;
immer::flex_vector<PtrVal> x30 = x13.content.take(3);
immer::flex_vector<PtrVal> x31 = x30 + x25;
int x32 = x25.size();
immer::flex_vector<PtrVal> x33 = x13.content.drop(3 + x32);
immer::flex_vector<PtrVal> x34 = x31 + x33;
x13.content = x34;
immer::flex_vector<PtrVal> x35 = immer::flex_vector<PtrVal>{intV_4};
// File.writeAtNoFill;
immer::flex_vector<PtrVal> x36 = x14.content.take(3);
immer::flex_vector<PtrVal> x37 = x36 + x35;
int x38 = x35.size();
immer::flex_vector<PtrVal> x39 = x14.content.drop(3 + x38);
immer::flex_vector<PtrVal> x40 = x37 + x39;
x14.content = x40;
// assertEq;
ASSERT((x13.content == x14.content), "writeAt and writeAtNoFill should behave the same when not writing after the end");
/* test writeAtNoFill */;
File x41 = File("A", immer::flex_vector<PtrVal>{intV_0, intV_1, intV_2});
File x42 = File("A", immer::flex_vector<PtrVal>{intV_0, intV_1, intV_2});
File x43 = File("A", immer::flex_vector<PtrVal>{intV_0, intV_1, intV_2});
immer::flex_vector<PtrVal> x44 = immer::flex_vector<PtrVal>{intV_3, intV_4, intV_5};
// File.writeAtNoFill;
immer::flex_vector<PtrVal> x45 = x41.content.take(3);
immer::flex_vector<PtrVal> x46 = x45 + x44;
int x47 = x44.size();
immer::flex_vector<PtrVal> x48 = x41.content.drop(3 + x47);
immer::flex_vector<PtrVal> x49 = x46 + x48;
x41.content = x49;
// assertEq;
ASSERT((x41.content == immer::flex_vector<PtrVal>{intV_0, intV_1, intV_2, intV_3, intV_4, intV_5}), "write at the end of a file");
immer::flex_vector<PtrVal> x50 = immer::flex_vector<PtrVal>{intV_3, intV_4, intV_5};
// File.writeAtNoFill;
immer::flex_vector<PtrVal> x51 = x42.content.take(2);
immer::flex_vector<PtrVal> x52 = x51 + x50;
int x53 = x50.size();
immer::flex_vector<PtrVal> x54 = x42.content.drop(2 + x53);
immer::flex_vector<PtrVal> x55 = x52 + x54;
x42.content = x55;
// assertEq;
ASSERT((x42.content == immer::flex_vector<PtrVal>{intV_0, intV_1, intV_3, intV_4, intV_5}), "write at the middle of a file, exceeding the end");
immer::flex_vector<PtrVal> x56 = immer::flex_vector<PtrVal>{intV_4};
// File.writeAtNoFill;
immer::flex_vector<PtrVal> x57 = x43.content.take(1);
immer::flex_vector<PtrVal> x58 = x57 + x56;
int x59 = x56.size();
immer::flex_vector<PtrVal> x60 = x43.content.drop(1 + x59);
immer::flex_vector<PtrVal> x61 = x58 + x60;
x43.content = x61;
// assertEq;
ASSERT((x43.content == immer::flex_vector<PtrVal>{intV_0, intV_4, intV_2}), "write at the middle of a file, not exceeding the end");
// assertEq;
ASSERT((Stream(File("A", immer::flex_vector<PtrVal>{intV_0, intV_1, intV_2})).cursor == 0), "cursor should default to 0");
return std::monostate{};
}

int main(int argc, char *argv[]) {
  test(0);
  return 0;
} 
