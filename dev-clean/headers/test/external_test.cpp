
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
String x1 = String("A");
Ptr<File> x2 = File::create(x1, immer::flex_vector<PtrVal>{intV_0, intV_1, intV_2});
immer::flex_vector<PtrVal> x3 = x2->content.drop(0);
immer::flex_vector<PtrVal> x4 = x3.take(2);
/* assertEq */;
ASSERT((x4 == immer::flex_vector<PtrVal>{intV_0, intV_1}), "readAt");
immer::flex_vector<PtrVal> x5 = x2->content.drop(1);
immer::flex_vector<PtrVal> x6 = x5.take(4);
/* assertEq */;
ASSERT((x6 == immer::flex_vector<PtrVal>{intV_1, intV_2}), "readAt with more bytes");
immer::flex_vector<PtrVal> x7 = x2->content.drop(0);
immer::flex_vector<PtrVal> x8 = x7.take(0);
/* assertEq */;
ASSERT((x8 == immer::flex_vector<PtrVal>{}), "readAt with no bytes");
/* test size */;
int x9 = File::create(x1, immer::flex_vector<PtrVal>{intV_0, intV_1, intV_2})->content.size();
/* assertEq */;
ASSERT((x9 == 3), "size of non-empty file");
int x10 = File::create(String("B"))->content.size();
/* assertEq */;
ASSERT((x10 == 0), "size of an empty file");
/* test clear */;

Ptr<File> x11 = File::create(x1, immer::flex_vector<PtrVal>{intV_0, intV_1, intV_2});
x11->content = immer::flex_vector<PtrVal>{};
int x12 = x11->content.size();
/* assertEq */;
ASSERT((x12 == 0), "clear should result in empty file");
/* test writeAt */;
Ptr<File> x13 = File::create(x1, immer::flex_vector<PtrVal>{intV_0, intV_1, intV_2});
Ptr<File> x14 = File::create(x1, immer::flex_vector<PtrVal>{intV_0, intV_1, intV_2});
Ptr<File> x15 = File::create(x1, immer::flex_vector<PtrVal>{intV_0, intV_1, intV_2});
immer::flex_vector<PtrVal> x16 = immer::flex_vector<PtrVal>{intV_4};
// File.writeAt;
int x17 = x13->content.size();
int x18 = 5 - x17;
if (x18 > 0) {
immer::flex_vector<PtrVal> x19 = immer::flex_vector<PtrVal>(x18, intV_0);
immer::flex_vector<PtrVal> x20 = x13->content + x19;
x13->content = x20;
}
// File.writeAtNoFill;
immer::flex_vector<PtrVal> x21 = x13->content.take(5);
immer::flex_vector<PtrVal> x22 = x21 + x16;
int x23 = x16.size();
immer::flex_vector<PtrVal> x24 = x13->content.drop(5 + x23);
immer::flex_vector<PtrVal> x25 = x22 + x24;
x13->content = x25;
/* assertEq */;
ASSERT((x13->content == immer::flex_vector<PtrVal>{intV_0, intV_1, intV_2, intV_0, intV_0, intV_4}), "write after the end of the file, a hole should be created");
immer::flex_vector<PtrVal> x26 = immer::flex_vector<PtrVal>{intV_4};
// File.writeAt;
int x27 = x14->content.size();
int x28 = 3 - x27;
if (x28 > 0) {
immer::flex_vector<PtrVal> x29 = immer::flex_vector<PtrVal>(x28, intV_0);
immer::flex_vector<PtrVal> x30 = x14->content + x29;
x14->content = x30;
}
// File.writeAtNoFill;
immer::flex_vector<PtrVal> x31 = x14->content.take(3);
immer::flex_vector<PtrVal> x32 = x31 + x26;
int x33 = x26.size();
immer::flex_vector<PtrVal> x34 = x14->content.drop(3 + x33);
immer::flex_vector<PtrVal> x35 = x32 + x34;
x14->content = x35;
immer::flex_vector<PtrVal> x36 = immer::flex_vector<PtrVal>{intV_4};
// File.writeAtNoFill;
immer::flex_vector<PtrVal> x37 = x15->content.take(3);
immer::flex_vector<PtrVal> x38 = x37 + x36;
int x39 = x36.size();
immer::flex_vector<PtrVal> x40 = x15->content.drop(3 + x39);
immer::flex_vector<PtrVal> x41 = x38 + x40;
x15->content = x41;
/* assertEq */;
ASSERT((x14->content == x15->content), "writeAt and writeAtNoFill should behave the same when not writing after the end");
/* test writeAtNoFill */;
Ptr<File> x42 = File::create(x1, immer::flex_vector<PtrVal>{intV_0, intV_1, intV_2});
Ptr<File> x43 = File::create(x1, immer::flex_vector<PtrVal>{intV_0, intV_1, intV_2});
Ptr<File> x44 = File::create(x1, immer::flex_vector<PtrVal>{intV_0, intV_1, intV_2});
immer::flex_vector<PtrVal> x45 = immer::flex_vector<PtrVal>{intV_3, intV_4, intV_5};
// File.writeAtNoFill;
immer::flex_vector<PtrVal> x46 = x42->content.take(3);
immer::flex_vector<PtrVal> x47 = x46 + x45;
int x48 = x45.size();
immer::flex_vector<PtrVal> x49 = x42->content.drop(3 + x48);
immer::flex_vector<PtrVal> x50 = x47 + x49;
x42->content = x50;
/* assertEq */;
ASSERT((x42->content == immer::flex_vector<PtrVal>{intV_0, intV_1, intV_2, intV_3, intV_4, intV_5}), "write at the end of a file");
immer::flex_vector<PtrVal> x51 = immer::flex_vector<PtrVal>{intV_3, intV_4, intV_5};
// File.writeAtNoFill;
immer::flex_vector<PtrVal> x52 = x43->content.take(2);
immer::flex_vector<PtrVal> x53 = x52 + x51;
int x54 = x51.size();
immer::flex_vector<PtrVal> x55 = x43->content.drop(2 + x54);
immer::flex_vector<PtrVal> x56 = x53 + x55;
x43->content = x56;
/* assertEq */;
ASSERT((x43->content == immer::flex_vector<PtrVal>{intV_0, intV_1, intV_3, intV_4, intV_5}), "write at the middle of a file, exceeding the end");
immer::flex_vector<PtrVal> x57 = immer::flex_vector<PtrVal>{intV_4};
// File.writeAtNoFill;
immer::flex_vector<PtrVal> x58 = x44->content.take(1);
immer::flex_vector<PtrVal> x59 = x58 + x57;
int x60 = x57.size();
immer::flex_vector<PtrVal> x61 = x44->content.drop(1 + x60);
immer::flex_vector<PtrVal> x62 = x59 + x61;
x44->content = x62;
/* assertEq */;
ASSERT((x44->content == immer::flex_vector<PtrVal>{intV_0, intV_4, intV_2}), "write at the middle of a file, not exceeding the end");
/* assertEq */;
ASSERT((Stream(File::create(x1, immer::flex_vector<PtrVal>{intV_0, intV_1, intV_2})).cursor == 0), "cursor should default to 0");
/* testReadStatField */;
Ptr<File> x63 = File::create(x1);
x63->stat = immer::flex_vector<PtrVal>{make_IntV(0L, 8), make_IntV(1L, 8), make_IntV(2L, 8), make_IntV(3L, 8), make_IntV(4L, 8), make_IntV(5L, 8), make_IntV(6L, 8), make_IntV(7L, 8), make_IntV(8L, 8), make_IntV(9L, 8), make_IntV(10L, 8), make_IntV(11L, 8), make_IntV(12L, 8), make_IntV(13L, 8), make_IntV(14L, 8), make_IntV(15L, 8), make_IntV(16L, 8), make_IntV(17L, 8), make_IntV(18L, 8), make_IntV(19L, 8), make_IntV(20L, 8), make_IntV(21L, 8), make_IntV(22L, 8), make_IntV(23L, 8), make_IntV(24L, 8), make_IntV(25L, 8), make_IntV(26L, 8), make_IntV(27L, 8), make_IntV(28L, 8), make_IntV(29L, 8), make_IntV(30L, 8), make_IntV(31L, 8), make_IntV(32L, 8), make_IntV(33L, 8), make_IntV(34L, 8), make_IntV(35L, 8), make_IntV(36L, 8), make_IntV(37L, 8), make_IntV(38L, 8), make_IntV(39L, 8), make_IntV(40L, 8), make_IntV(41L, 8), make_IntV(42L, 8), make_IntV(43L, 8), make_IntV(44L, 8), make_IntV(45L, 8), make_IntV(46L, 8), make_IntV(47L, 8), make_IntV(48L, 8), make_IntV(49L, 8), make_IntV(50L, 8), make_IntV(51L, 8), make_IntV(52L, 8), make_IntV(53L, 8), make_IntV(54L, 8), make_IntV(55L, 8), make_IntV(56L, 8), make_IntV(57L, 8), make_IntV(58L, 8), make_IntV(59L, 8), make_IntV(60L, 8), make_IntV(61L, 8), make_IntV(62L, 8), make_IntV(63L, 8), make_IntV(64L, 8), make_IntV(65L, 8), make_IntV(66L, 8), make_IntV(67L, 8), make_IntV(68L, 8), make_IntV(69L, 8), make_IntV(70L, 8), make_IntV(71L, 8), make_IntV(72L, 8), make_IntV(73L, 8), make_IntV(74L, 8), make_IntV(75L, 8), make_IntV(76L, 8), make_IntV(77L, 8), make_IntV(78L, 8), make_IntV(79L, 8), make_IntV(80L, 8), make_IntV(81L, 8), make_IntV(82L, 8), make_IntV(83L, 8), make_IntV(84L, 8), make_IntV(85L, 8), make_IntV(86L, 8), make_IntV(87L, 8), make_IntV(88L, 8), make_IntV(89L, 8), make_IntV(90L, 8), make_IntV(91L, 8), make_IntV(92L, 8), make_IntV(93L, 8), make_IntV(94L, 8), make_IntV(95L, 8), make_IntV(96L, 8), make_IntV(97L, 8), make_IntV(98L, 8), make_IntV(99L, 8), make_IntV(100L, 8), make_IntV(101L, 8), make_IntV(102L, 8), make_IntV(103L, 8), make_IntV(104L, 8), make_IntV(105L, 8), make_IntV(106L, 8), make_IntV(107L, 8), make_IntV(108L, 8), make_IntV(109L, 8), make_IntV(110L, 8), make_IntV(111L, 8), make_IntV(112L, 8), make_IntV(113L, 8), make_IntV(114L, 8), make_IntV(115L, 8), make_IntV(116L, 8), make_IntV(117L, 8), make_IntV(118L, 8), make_IntV(119L, 8)};
immer::flex_vector<PtrVal> x64 = x63->stat.drop(24);
immer::flex_vector<PtrVal> x65 = x64.take(4);
/* assertEq */;
ASSERT((*Value::from_bytes(x65) == *Value::from_bytes(immer::flex_vector<PtrVal>{make_IntV(24L, 8), make_IntV(25L, 8), make_IntV(26L, 8), make_IntV(27L, 8)})), "testReadStatField");
/* testWriteStatField */;
x63->stat = immer::flex_vector<PtrVal>{make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8), make_IntV(-1L, 8)};
PtrVal x66 = make_IntV(-559038737L, 32);
immer::flex_vector<PtrVal> x67 = x66->to_bytes();
immer::flex_vector<PtrVal> x68 = x63->stat.take(24);
immer::flex_vector<PtrVal> x69 = x68 + x67;
int x70 = x67.size();
immer::flex_vector<PtrVal> x71 = x63->stat.drop(24 + x70);
immer::flex_vector<PtrVal> x72 = x69 + x71;
x63->stat = x72;
immer::flex_vector<PtrVal> x73 = x63->stat.drop(24);
immer::flex_vector<PtrVal> x74 = x73.take(4);
/* assertEq */;
ASSERT((*Value::from_bytes(x74) == *x66), "testWriteStatField");
/* testing ptrderef. deref shouldn't generate explicit 'any' typed variable */;
PtrVal x75 = make_IntV(3L, 32);
*x75;
*x75;
/* test stringops */;
int x76 = Str::split(String("hello world"), String(" ")).size();
/* assertEq */;
ASSERT((x76 == 2), "segment should have two elements");
return std::monostate{};
}

int main(int argc, char *argv[]) {
  test(0);
  return 0;
} 
