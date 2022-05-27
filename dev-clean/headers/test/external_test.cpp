
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
Ptr<File> x1 = File::create("A", immer::flex_vector<PtrVal>{intV_0, intV_1, intV_2});
immer::flex_vector<PtrVal> x2 = x1->content.drop(0);
immer::flex_vector<PtrVal> x3 = x2.take(2);
/* assertEq */;
ASSERT((x3 == immer::flex_vector<PtrVal>{intV_0, intV_1}), "readAt");
immer::flex_vector<PtrVal> x4 = x1->content.drop(1);
immer::flex_vector<PtrVal> x5 = x4.take(4);
/* assertEq */;
ASSERT((x5 == immer::flex_vector<PtrVal>{intV_1, intV_2}), "readAt with more bytes");
immer::flex_vector<PtrVal> x6 = x1->content.drop(0);
immer::flex_vector<PtrVal> x7 = x6.take(0);
/* assertEq */;
ASSERT((x7 == immer::flex_vector<PtrVal>{}), "readAt with no bytes");
/* test size */;
int x8 = File::create("A", immer::flex_vector<PtrVal>{intV_0, intV_1, intV_2})->content.size();
/* assertEq */;
ASSERT((x8 == 3), "size of non-empty file");
int x9 = File::create("B")->content.size();
/* assertEq */;
ASSERT((x9 == 0), "size of an empty file");
/* test clear */;
Ptr<File> x10 = File::create("A", immer::flex_vector<PtrVal>{intV_0, intV_1, intV_2});
x10->content = immer::flex_vector<PtrVal>{};
int x11 = x10->content.size();
/* assertEq */;
ASSERT((x11 == 0), "clear should result in empty file");
/* test writeAt */;
Ptr<File> x12 = File::create("A", immer::flex_vector<PtrVal>{intV_0, intV_1, intV_2});
Ptr<File> x13 = File::create("A", immer::flex_vector<PtrVal>{intV_0, intV_1, intV_2});
Ptr<File> x14 = File::create("A", immer::flex_vector<PtrVal>{intV_0, intV_1, intV_2});
immer::flex_vector<PtrVal> x15 = immer::flex_vector<PtrVal>{intV_4};
// File.writeAt;
int x16 = x12->content.size();
int x17 = 5 - x16;
if (x17 > 0) {
immer::flex_vector<PtrVal> x18 = immer::flex_vector<PtrVal>(x17, intV_0);
immer::flex_vector<PtrVal> x19 = x12->content + x18;
x12->content = x19;
}
// File.writeAtNoFill;
immer::flex_vector<PtrVal> x20 = x12->content.take(5);
immer::flex_vector<PtrVal> x21 = x20 + x15;
int x22 = x15.size();
immer::flex_vector<PtrVal> x23 = x12->content.drop(5 + x22);
immer::flex_vector<PtrVal> x24 = x21 + x23;
x12->content = x24;
/* assertEq */;
ASSERT((x12->content == immer::flex_vector<PtrVal>{intV_0, intV_1, intV_2, intV_0, intV_0, intV_4}), "write after the end of the file, a hole should be created");
immer::flex_vector<PtrVal> x25 = immer::flex_vector<PtrVal>{intV_4};
// File.writeAt;
int x26 = x13->content.size();
int x27 = 3 - x26;
if (x27 > 0) {
immer::flex_vector<PtrVal> x28 = immer::flex_vector<PtrVal>(x27, intV_0);
immer::flex_vector<PtrVal> x29 = x13->content + x28;
x13->content = x29;
}
// File.writeAtNoFill;
immer::flex_vector<PtrVal> x30 = x13->content.take(3);
immer::flex_vector<PtrVal> x31 = x30 + x25;
int x32 = x25.size();
immer::flex_vector<PtrVal> x33 = x13->content.drop(3 + x32);
immer::flex_vector<PtrVal> x34 = x31 + x33;
x13->content = x34;
immer::flex_vector<PtrVal> x35 = immer::flex_vector<PtrVal>{intV_4};
// File.writeAtNoFill;
immer::flex_vector<PtrVal> x36 = x14->content.take(3);
immer::flex_vector<PtrVal> x37 = x36 + x35;
int x38 = x35.size();
immer::flex_vector<PtrVal> x39 = x14->content.drop(3 + x38);
immer::flex_vector<PtrVal> x40 = x37 + x39;
x14->content = x40;
/* assertEq */;
ASSERT((x13->content == x14->content), "writeAt and writeAtNoFill should behave the same when not writing after the end");
/* test writeAtNoFill */;
Ptr<File> x41 = File::create("A", immer::flex_vector<PtrVal>{intV_0, intV_1, intV_2});
Ptr<File> x42 = File::create("A", immer::flex_vector<PtrVal>{intV_0, intV_1, intV_2});
Ptr<File> x43 = File::create("A", immer::flex_vector<PtrVal>{intV_0, intV_1, intV_2});
immer::flex_vector<PtrVal> x44 = immer::flex_vector<PtrVal>{intV_3, intV_4, intV_5};
// File.writeAtNoFill;
immer::flex_vector<PtrVal> x45 = x41->content.take(3);
immer::flex_vector<PtrVal> x46 = x45 + x44;
int x47 = x44.size();
immer::flex_vector<PtrVal> x48 = x41->content.drop(3 + x47);
immer::flex_vector<PtrVal> x49 = x46 + x48;
x41->content = x49;
/* assertEq */;
ASSERT((x41->content == immer::flex_vector<PtrVal>{intV_0, intV_1, intV_2, intV_3, intV_4, intV_5}), "write at the end of a file");
immer::flex_vector<PtrVal> x50 = immer::flex_vector<PtrVal>{intV_3, intV_4, intV_5};
// File.writeAtNoFill;
immer::flex_vector<PtrVal> x51 = x42->content.take(2);
immer::flex_vector<PtrVal> x52 = x51 + x50;
int x53 = x50.size();
immer::flex_vector<PtrVal> x54 = x42->content.drop(2 + x53);
immer::flex_vector<PtrVal> x55 = x52 + x54;
x42->content = x55;
/* assertEq */;
ASSERT((x42->content == immer::flex_vector<PtrVal>{intV_0, intV_1, intV_3, intV_4, intV_5}), "write at the middle of a file, exceeding the end");
immer::flex_vector<PtrVal> x56 = immer::flex_vector<PtrVal>{intV_4};
// File.writeAtNoFill;
immer::flex_vector<PtrVal> x57 = x43->content.take(1);
immer::flex_vector<PtrVal> x58 = x57 + x56;
int x59 = x56.size();
immer::flex_vector<PtrVal> x60 = x43->content.drop(1 + x59);
immer::flex_vector<PtrVal> x61 = x58 + x60;
x43->content = x61;
/* assertEq */;
ASSERT((x43->content == immer::flex_vector<PtrVal>{intV_0, intV_4, intV_2}), "write at the middle of a file, not exceeding the end");
int64_t x62 = Stream::create(File::create("A", immer::flex_vector<PtrVal>{intV_0, intV_1, intV_2}))->cursor;
/* assertEq */;
ASSERT((x62 == 0), "cursor should default to 0");
/* testReadStatField */;
Ptr<File> x63 = File::create("A");
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
int x76 = Str::split("hello world", " ").size();
/* assertEq */;
ASSERT((x76 == 2), "segment should have two elements");
int x77 = Str::split("another phrase that is longer", " ").size();
/* assertEq */;
ASSERT((x77 == 5), "segment should have five elements");
/* test stream copy constructor */;
Ptr<Stream> x78 = Stream::create(x63, O_RDONLY, 1L);
Ptr<Stream> x79 = Stream::create(x78);
x78;
x78->cursor = 5L;
x78;
int64_t x80 = x78->cursor;
/* assertEq */;
ASSERT((x80 == 5L), "strm1 should be updated");
int64_t x81 = x79->cursor;
/* assertEq */;
ASSERT((x81 == 1L), "strm2 should not be updated");
/* test get_file */;
FS x82 = FS();
/* setFile */;
Ptr<File> x83 = x82.root_file;
immer::flex_vector<String> x84 = Vec::filter(Str::split("/", "/"), [&](auto x85) {
return x85.length() > 0;
});
Ptr<File> x86 = Vec::foldLeft(x84, x83, [&](auto x87, auto x88) {
bool x89 = x87 == nullptr || ({
bool x90 = Map::contains(x87->children, x88);
!x90;
});
Ptr<File> x91 = x89 ? nullptr : ({
Ptr<File> x92 = x87->children.at(x88);
x92;
});
return x91;
});
if (x86 != nullptr) {
Ptr<File> x93 = File::create("a");
immer::map<String, Ptr<File>> x94 = x86->children.insert(std::make_pair(x93->name, x93));
x86->children = x94;
}
/* setFile */;
Ptr<File> x95 = x82.root_file;
immer::flex_vector<String> x96 = Vec::filter(Str::split("/a", "/"), [&](auto x97) {
return x97.length() > 0;
});
Ptr<File> x98 = Vec::foldLeft(x96, x95, [&](auto x99, auto x100) {
bool x101 = x99 == nullptr || ({
bool x102 = Map::contains(x99->children, x100);
!x102;
});
Ptr<File> x103 = x101 ? nullptr : ({
Ptr<File> x104 = x99->children.at(x100);
x104;
});
return x103;
});
if (x98 != nullptr) {
Ptr<File> x105 = File::create("b");
immer::map<String, Ptr<File>> x106 = x98->children.insert(std::make_pair(x105->name, x105));
x98->children = x106;
}
/* setFile */;
Ptr<File> x107 = x82.root_file;
immer::flex_vector<String> x108 = Vec::filter(Str::split("/a/b", "/"), [&](auto x109) {
return x109.length() > 0;
});
Ptr<File> x110 = Vec::foldLeft(x108, x107, [&](auto x111, auto x112) {
bool x113 = x111 == nullptr || ({
bool x114 = Map::contains(x111->children, x112);
!x114;
});
Ptr<File> x115 = x113 ? nullptr : ({
Ptr<File> x116 = x111->children.at(x112);
x116;
});
return x115;
});
if (x110 != nullptr) {
Ptr<File> x117 = File::create("c");
immer::map<String, Ptr<File>> x118 = x110->children.insert(std::make_pair(x117->name, x117));
x110->children = x118;
}
/* getFile */;
immer::flex_vector<String> x119 = Vec::filter(Str::split("/a/b/c", "/"), [&](auto x120) {
return x120.length() > 0;
});
Ptr<File> x121 = Vec::foldLeft(x119, x82.root_file, [&](auto x122, auto x123) {
bool x124 = x122 == nullptr || ({
bool x125 = Map::contains(x122->children, x123);
!x125;
});
Ptr<File> x126 = x124 ? nullptr : ({
Ptr<File> x127 = x122->children.at(x123);
x127;
});
return x126;
});
/* assertNeq */;
ASSERT((!(x121 == nullptr)), "file should exist");
/* test isLeft */;
false;
ASSERT((true), "Left value should not be set");
/* test isRight */;
true;
ASSERT((true), "Right value should not be set");
/* test get value */;
/* assertEq */;
ASSERT((true), "Right value should be set");
/* assertEq */;
ASSERT((true), "assigning to a string should work");
int x128 = S_IFREG;
immer::flex_vector<PtrVal> x129 = x63->stat.drop(24);
immer::flex_vector<PtrVal> x130 = x129.take(4);
immer::flex_vector<PtrVal> x131 = make_IntV(proj_IntV(Value::from_bytes(x130)) & proj_IntV(make_IntV(~S_IFMT, 32)) | (int64_t)x128, 32)->to_bytes();
immer::flex_vector<PtrVal> x132 = x63->stat.take(24);
immer::flex_vector<PtrVal> x133 = x132 + x131;
int x134 = x131.size();
immer::flex_vector<PtrVal> x135 = x63->stat.drop(24 + x134);
immer::flex_vector<PtrVal> x136 = x133 + x135;
x63->stat = x136;
int x137 = S_IFREG;
immer::flex_vector<PtrVal> x138 = x63->stat.drop(24);
immer::flex_vector<PtrVal> x139 = x138.take(4);
/* assertEq */;
ASSERT(((bool)(proj_IntV(Value::from_bytes(x139)) & (int64_t)x137) == true), "file type should be correctly set");
return std::monostate{};
}

int main(int argc, char *argv[]) {
  test(0);
  return 0;
} 
