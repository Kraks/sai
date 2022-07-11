#include <iostream>
#define PURE_STATE
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
Ptr<Stream> x79 = Stream::shallow_copy(x78);
x78;
x78->cursor = 5L;
x78;
int64_t x80 = x78->cursor;
/* assertEq */;
ASSERT((x80 == 5L), "strm1 should be updated");
int64_t x81 = x79->cursor;
/* assertEq */;
ASSERT((x81 == 1L), "strm2 should not be updated");
/* test directory structure */;
FS x82 = FS();
Ptr<File> x83 = File::create("a");
/* setFile */;
immer::flex_vector<String> x84 = Str::split("/a", "/");
immer::flex_vector<String> x85 = Vec::filter(x84, [&](auto x86) {
return x86.length() > 0;
});
int x87 = x85.size();
immer::flex_vector<String> x88 = x85.take(x87 - 1);
Ptr<File> x89 = Vec::foldLeft(x88, x82.root_file, [&](auto x90, auto x91) {
bool x92 = x90 == nullptr || ({
bool x93 = Map::contains(x90->children, x91);
!x93;
});
Ptr<File> x94 = x92 ? nullptr : ({
Ptr<File> x95 = x90->children.at(x91);
x95;
});
return x94;
});
String x96 = x85.back();
String x97 = x83->name;
/* assertEq */;
ASSERT((x96 == x97), "setFile name should equal to last segment");
if (x89 != nullptr) {
immer::map<String, Ptr<File>> x98 = x89->children.insert(std::make_pair(x97, x83));
x89->children = x98;
}
Ptr<File> x99 = File::create("b");
/* setFile */;
immer::flex_vector<String> x100 = Str::split("/a/b", "/");
immer::flex_vector<String> x101 = Vec::filter(x100, [&](auto x102) {
return x102.length() > 0;
});
int x103 = x101.size();
immer::flex_vector<String> x104 = x101.take(x103 - 1);
Ptr<File> x105 = Vec::foldLeft(x104, x82.root_file, [&](auto x106, auto x107) {
bool x108 = x106 == nullptr || ({
bool x109 = Map::contains(x106->children, x107);
!x109;
});
Ptr<File> x110 = x108 ? nullptr : ({
Ptr<File> x111 = x106->children.at(x107);
x111;
});
return x110;
});
String x112 = x101.back();
String x113 = x99->name;
/* assertEq */;
ASSERT((x112 == x113), "setFile name should equal to last segment");
if (x105 != nullptr) {
immer::map<String, Ptr<File>> x114 = x105->children.insert(std::make_pair(x113, x99));
x105->children = x114;
}
Ptr<File> x115 = File::create("c");
/* setFile */;
immer::flex_vector<String> x116 = Str::split("/a/b/c", "/");
immer::flex_vector<String> x117 = Vec::filter(x116, [&](auto x118) {
return x118.length() > 0;
});
int x119 = x117.size();
immer::flex_vector<String> x120 = x117.take(x119 - 1);
Ptr<File> x121 = Vec::foldLeft(x120, x82.root_file, [&](auto x122, auto x123) {
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
String x128 = x117.back();
String x129 = x115->name;
/* assertEq */;
ASSERT((x128 == x129), "setFile name should equal to last segment");
if (x121 != nullptr) {
immer::map<String, Ptr<File>> x130 = x121->children.insert(std::make_pair(x129, x115));
x121->children = x130;
}
/* getFile */;
immer::flex_vector<String> x131 = Vec::filter(x116, [&](auto x132) {
return x132.length() > 0;
});
Ptr<File> x133 = Vec::foldLeft(x131, x82.root_file, [&](auto x134, auto x135) {
bool x136 = x134 == nullptr || ({
bool x137 = Map::contains(x134->children, x135);
!x137;
});
Ptr<File> x138 = x136 ? nullptr : ({
Ptr<File> x139 = x134->children.at(x135);
x139;
});
return x138;
});
/* assertNeq */;
ASSERT((!(x133 == nullptr)), "file should exist");
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
int x140 = S_IFREG;
/* _set_file_type */;
immer::flex_vector<PtrVal> x141 = x63->stat.drop(24);
immer::flex_vector<PtrVal> x142 = x141.take(4);
immer::flex_vector<PtrVal> x143 = make_IntV(proj_IntV(Value::from_bytes(x142)) & proj_IntV(make_IntV(~S_IFMT, 32)) | (int64_t)x140, 32)->to_bytes();
immer::flex_vector<PtrVal> x144 = x63->stat.take(24);
immer::flex_vector<PtrVal> x145 = x144 + x143;
int x146 = x143.size();
immer::flex_vector<PtrVal> x147 = x63->stat.drop(24 + x146);
immer::flex_vector<PtrVal> x148 = x145 + x147;
x63->stat = x148;
int x149 = S_IFREG;
immer::flex_vector<PtrVal> x150 = x63->stat.drop(24);
immer::flex_vector<PtrVal> x151 = x150.take(4);
/* assertEq */;
ASSERT(((bool)(proj_IntV(Value::from_bytes(x151)) & (int64_t)x149) == true), "file type should be correctly set");
/* test fs copy */;
FS x152 = FS();
/* setFile */;
immer::flex_vector<String> x153 = Vec::filter(x84, [&](auto x154) {
return x154.length() > 0;
});
int x155 = x153.size();
immer::flex_vector<String> x156 = x153.take(x155 - 1);
Ptr<File> x157 = Vec::foldLeft(x156, x152.root_file, [&](auto x158, auto x159) {
bool x160 = x158 == nullptr || ({
bool x161 = Map::contains(x158->children, x159);
!x161;
});
Ptr<File> x162 = x160 ? nullptr : ({
Ptr<File> x163 = x158->children.at(x159);
x163;
});
return x162;
});
String x164 = x153.back();
/* assertEq */;
ASSERT((x164 == x97), "setFile name should equal to last segment");
if (x157 != nullptr) {
immer::map<String, Ptr<File>> x165 = x157->children.insert(std::make_pair(x97, x83));
x157->children = x165;
}
/* setFile */;
immer::flex_vector<String> x166 = Vec::filter(x100, [&](auto x167) {
return x167.length() > 0;
});
int x168 = x166.size();
immer::flex_vector<String> x169 = x166.take(x168 - 1);
Ptr<File> x170 = Vec::foldLeft(x169, x152.root_file, [&](auto x171, auto x172) {
bool x173 = x171 == nullptr || ({
bool x174 = Map::contains(x171->children, x172);
!x174;
});
Ptr<File> x175 = x173 ? nullptr : ({
Ptr<File> x176 = x171->children.at(x172);
x176;
});
return x175;
});
String x177 = x166.back();
/* assertEq */;
ASSERT((x177 == x113), "setFile name should equal to last segment");
if (x170 != nullptr) {
immer::map<String, Ptr<File>> x178 = x170->children.insert(std::make_pair(x113, x99));
x170->children = x178;
}
Ptr<File> x179 = File::create("c", immer::flex_vector<PtrVal>{intV_0, intV_1, intV_2});
/* setFile */;
immer::flex_vector<String> x180 = Vec::filter(x116, [&](auto x181) {
return x181.length() > 0;
});
int x182 = x180.size();
immer::flex_vector<String> x183 = x180.take(x182 - 1);
Ptr<File> x184 = Vec::foldLeft(x183, x152.root_file, [&](auto x185, auto x186) {
bool x187 = x185 == nullptr || ({
bool x188 = Map::contains(x185->children, x186);
!x188;
});
Ptr<File> x189 = x187 ? nullptr : ({
Ptr<File> x190 = x185->children.at(x186);
x190;
});
return x189;
});
String x191 = x180.back();
String x192 = x179->name;
/* assertEq */;
ASSERT((x191 == x192), "setFile name should equal to last segment");
if (x184 != nullptr) {
immer::map<String, Ptr<File>> x193 = x184->children.insert(std::make_pair(x192, x179));
x184->children = x193;
}
/* make a copy */;
Ptr<File> x194 = File::deep_copy(x152.root_file);
immer::map<int, Ptr<Stream>> x195 = immer::map<int, Ptr<Stream>>({});
FS x196 = FS(x195, x194);
/* getFile */;
immer::flex_vector<String> x197 = Vec::filter(x116, [&](auto x198) {
return x198.length() > 0;
});
Ptr<File> x199 = Vec::foldLeft(x197, x196.root_file, [&](auto x200, auto x201) {
bool x202 = x200 == nullptr || ({
bool x203 = Map::contains(x200->children, x201);
!x203;
});
Ptr<File> x204 = x202 ? nullptr : ({
Ptr<File> x205 = x200->children.at(x201);
x205;
});
return x204;
});
/* assertNeq */;
ASSERT((!(x199 == nullptr)), "file should exist in the copied file system");
/* modify a file in the copied file system */;
immer::flex_vector<PtrVal> x206 = immer::flex_vector<PtrVal>{intV_3, intV_4, intV_5};
// File.writeAtNoFill;
immer::flex_vector<PtrVal> x207 = x199->content.take(3);
immer::flex_vector<PtrVal> x208 = x207 + x206;
int x209 = x206.size();
immer::flex_vector<PtrVal> x210 = x199->content.drop(3 + x209);
immer::flex_vector<PtrVal> x211 = x208 + x210;
x199->content = x211;
/* check that the original file is not modified */;
/* getFile */;
immer::flex_vector<String> x212 = Vec::filter(x116, [&](auto x213) {
return x213.length() > 0;
});
Ptr<File> x214 = Vec::foldLeft(x212, x152.root_file, [&](auto x215, auto x216) {
bool x217 = x215 == nullptr || ({
bool x218 = Map::contains(x215->children, x216);
!x218;
});
Ptr<File> x219 = x217 ? nullptr : ({
Ptr<File> x220 = x215->children.at(x216);
x220;
});
return x219;
});
/* assertEq */;
ASSERT((x214->content == immer::flex_vector<PtrVal>{intV_0, intV_1, intV_2}), "file should not be modified");
/* add a file in the original system */;
Ptr<File> x221 = File::create("d");
/* setFile */;
immer::flex_vector<String> x222 = Str::split("/a/b/d", "/");
immer::flex_vector<String> x223 = Vec::filter(x222, [&](auto x224) {
return x224.length() > 0;
});
int x225 = x223.size();
immer::flex_vector<String> x226 = x223.take(x225 - 1);
Ptr<File> x227 = Vec::foldLeft(x226, x152.root_file, [&](auto x228, auto x229) {
bool x230 = x228 == nullptr || ({
bool x231 = Map::contains(x228->children, x229);
!x231;
});
Ptr<File> x232 = x230 ? nullptr : ({
Ptr<File> x233 = x228->children.at(x229);
x233;
});
return x232;
});
String x234 = x223.back();
String x235 = x221->name;
/* assertEq */;
ASSERT((x234 == x235), "setFile name should equal to last segment");
if (x227 != nullptr) {
immer::map<String, Ptr<File>> x236 = x227->children.insert(std::make_pair(x235, x221));
x227->children = x236;
}
/* check that the copied file system is not modified */;
/* getFile */;
immer::flex_vector<String> x237 = Vec::filter(x222, [&](auto x238) {
return x238.length() > 0;
});
Ptr<File> x239 = Vec::foldLeft(x237, x196.root_file, [&](auto x240, auto x241) {
bool x242 = x240 == nullptr || ({
bool x243 = Map::contains(x240->children, x241);
!x243;
});
Ptr<File> x244 = x242 ? nullptr : ({
Ptr<File> x245 = x240->children.at(x241);
x245;
});
return x244;
});
/* assertEq */;
ASSERT((x239 == nullptr), "file should not be added to the copied file system");
return std::monostate{};
}

int main(int argc, char *argv[]) {
  test(0);
  return 0;
} 
