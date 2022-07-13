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
x83->parent = x89;
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
x99->parent = x105;
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
x115->parent = x121;
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
/* test full path */;
FS x140 = FS();
/* setFile */;
immer::flex_vector<String> x141 = Vec::filter(x84, [&](auto x142) {
return x142.length() > 0;
});
int x143 = x141.size();
immer::flex_vector<String> x144 = x141.take(x143 - 1);
Ptr<File> x145 = Vec::foldLeft(x144, x140.root_file, [&](auto x146, auto x147) {
bool x148 = x146 == nullptr || ({
bool x149 = Map::contains(x146->children, x147);
!x149;
});
Ptr<File> x150 = x148 ? nullptr : ({
Ptr<File> x151 = x146->children.at(x147);
x151;
});
return x150;
});
String x152 = x141.back();
/* assertEq */;
ASSERT((x152 == x97), "setFile name should equal to last segment");
if (x145 != nullptr) {
x83->parent = x145;
immer::map<String, Ptr<File>> x153 = x145->children.insert(std::make_pair(x97, x83));
x145->children = x153;
}
/* setFile */;
immer::flex_vector<String> x154 = Vec::filter(x100, [&](auto x155) {
return x155.length() > 0;
});
int x156 = x154.size();
immer::flex_vector<String> x157 = x154.take(x156 - 1);
Ptr<File> x158 = Vec::foldLeft(x157, x140.root_file, [&](auto x159, auto x160) {
bool x161 = x159 == nullptr || ({
bool x162 = Map::contains(x159->children, x160);
!x162;
});
Ptr<File> x163 = x161 ? nullptr : ({
Ptr<File> x164 = x159->children.at(x160);
x164;
});
return x163;
});
String x165 = x154.back();
/* assertEq */;
ASSERT((x165 == x113), "setFile name should equal to last segment");
if (x158 != nullptr) {
x99->parent = x158;
immer::map<String, Ptr<File>> x166 = x158->children.insert(std::make_pair(x113, x99));
x158->children = x166;
}
/* setFile */;
immer::flex_vector<String> x167 = Vec::filter(x116, [&](auto x168) {
return x168.length() > 0;
});
int x169 = x167.size();
immer::flex_vector<String> x170 = x167.take(x169 - 1);
Ptr<File> x171 = Vec::foldLeft(x170, x140.root_file, [&](auto x172, auto x173) {
bool x174 = x172 == nullptr || ({
bool x175 = Map::contains(x172->children, x173);
!x175;
});
Ptr<File> x176 = x174 ? nullptr : ({
Ptr<File> x177 = x172->children.at(x173);
x177;
});
return x176;
});
String x178 = x167.back();
/* assertEq */;
ASSERT((x178 == x129), "setFile name should equal to last segment");
if (x171 != nullptr) {
x115->parent = x171;
immer::map<String, Ptr<File>> x179 = x171->children.insert(std::make_pair(x129, x115));
x171->children = x179;
}
/* getFile */;
immer::flex_vector<String> x180 = Vec::filter(x116, [&](auto x181) {
return x181.length() > 0;
});
Ptr<File> x182 = Vec::foldLeft(x180, x140.root_file, [&](auto x183, auto x184) {
bool x185 = x183 == nullptr || ({
bool x186 = Map::contains(x183->children, x184);
!x186;
});
Ptr<File> x187 = x185 ? nullptr : ({
Ptr<File> x188 = x183->children.at(x184);
x188;
});
return x187;
});
Ptr<File> x189 = x182;
String x190 = x182->name;
while (x189->parent != nullptr) {
Ptr<File> x191 = x189->parent;
x189 = x191;
bool x192 = x191->parent == nullptr && x191->name == "/";
if (x192) x190 = "/" + x190;
 else x190 = x191->name + "/" + x190;
}
/* assertEq */;
ASSERT((x189->name == "/"), "Outermost ancestor should be named /");
/* assertEq */;
ASSERT((x190 == "/a/b/c"), "full path should be correct");
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
int x193 = S_IFREG;
/* _set_file_type */;
immer::flex_vector<PtrVal> x194 = x63->stat.drop(24);
immer::flex_vector<PtrVal> x195 = x194.take(4);
immer::flex_vector<PtrVal> x196 = make_IntV(proj_IntV(Value::from_bytes(x195)) & proj_IntV(make_IntV(~S_IFMT, 32)) | (int64_t)x193, 32)->to_bytes();
immer::flex_vector<PtrVal> x197 = x63->stat.take(24);
immer::flex_vector<PtrVal> x198 = x197 + x196;
int x199 = x196.size();
immer::flex_vector<PtrVal> x200 = x63->stat.drop(24 + x199);
immer::flex_vector<PtrVal> x201 = x198 + x200;
x63->stat = x201;
int x202 = S_IFREG;
immer::flex_vector<PtrVal> x203 = x63->stat.drop(24);
immer::flex_vector<PtrVal> x204 = x203.take(4);
/* assertEq */;
ASSERT(((bool)(proj_IntV(Value::from_bytes(x204)) & (int64_t)x202) == true), "file type should be correctly set");
/* test fs copy */;
FS x205 = FS();
/* setFile */;
immer::flex_vector<String> x206 = Vec::filter(x84, [&](auto x207) {
return x207.length() > 0;
});
int x208 = x206.size();
immer::flex_vector<String> x209 = x206.take(x208 - 1);
Ptr<File> x210 = Vec::foldLeft(x209, x205.root_file, [&](auto x211, auto x212) {
bool x213 = x211 == nullptr || ({
bool x214 = Map::contains(x211->children, x212);
!x214;
});
Ptr<File> x215 = x213 ? nullptr : ({
Ptr<File> x216 = x211->children.at(x212);
x216;
});
return x215;
});
String x217 = x206.back();
/* assertEq */;
ASSERT((x217 == x97), "setFile name should equal to last segment");
if (x210 != nullptr) {
x83->parent = x210;
immer::map<String, Ptr<File>> x218 = x210->children.insert(std::make_pair(x97, x83));
x210->children = x218;
}
/* setFile */;
immer::flex_vector<String> x219 = Vec::filter(x100, [&](auto x220) {
return x220.length() > 0;
});
int x221 = x219.size();
immer::flex_vector<String> x222 = x219.take(x221 - 1);
Ptr<File> x223 = Vec::foldLeft(x222, x205.root_file, [&](auto x224, auto x225) {
bool x226 = x224 == nullptr || ({
bool x227 = Map::contains(x224->children, x225);
!x227;
});
Ptr<File> x228 = x226 ? nullptr : ({
Ptr<File> x229 = x224->children.at(x225);
x229;
});
return x228;
});
String x230 = x219.back();
/* assertEq */;
ASSERT((x230 == x113), "setFile name should equal to last segment");
if (x223 != nullptr) {
x99->parent = x223;
immer::map<String, Ptr<File>> x231 = x223->children.insert(std::make_pair(x113, x99));
x223->children = x231;
}
Ptr<File> x232 = File::create("c", immer::flex_vector<PtrVal>{intV_0, intV_1, intV_2});
/* setFile */;
immer::flex_vector<String> x233 = Vec::filter(x116, [&](auto x234) {
return x234.length() > 0;
});
int x235 = x233.size();
immer::flex_vector<String> x236 = x233.take(x235 - 1);
Ptr<File> x237 = Vec::foldLeft(x236, x205.root_file, [&](auto x238, auto x239) {
bool x240 = x238 == nullptr || ({
bool x241 = Map::contains(x238->children, x239);
!x241;
});
Ptr<File> x242 = x240 ? nullptr : ({
Ptr<File> x243 = x238->children.at(x239);
x243;
});
return x242;
});
String x244 = x233.back();
String x245 = x232->name;
/* assertEq */;
ASSERT((x244 == x245), "setFile name should equal to last segment");
if (x237 != nullptr) {
x232->parent = x237;
immer::map<String, Ptr<File>> x246 = x237->children.insert(std::make_pair(x245, x232));
x237->children = x246;
}
/* make a copy */;
Ptr<File> x247 = File::deep_copy(x205.root_file);
immer::map<int, Ptr<Stream>> x248 = immer::map<int, Ptr<Stream>>({});
FS x249 = FS(x248, x247);
Map::foreach(x205.opened_files, [&](auto x250, auto x251) {
Ptr<File> x252 = x251->file;
/* getFile */;
immer::flex_vector<String> x253 = Vec::filter(Str::split(x252->name, "/"), [&](auto x254) {
return x254.length() > 0;
});
Ptr<File> x255 = Vec::foldLeft(x253, x249.root_file, [&](auto x256, auto x257) {
bool x258 = x256 == nullptr || ({
bool x259 = Map::contains(x256->children, x257);
!x259;
});
Ptr<File> x260 = x258 ? nullptr : ({
Ptr<File> x261 = x256->children.at(x257);
x261;
});
return x260;
});
Ptr<Stream> x262 = Stream::create(x255, x251->mode, x251->cursor);
immer::map<int, Ptr<Stream>> x263 = x249.opened_files.insert(std::make_pair(x250, x262));
x249.opened_files = x263;
return std::monostate{};
});/* getFile */;
immer::flex_vector<String> x264 = Vec::filter(x116, [&](auto x265) {
return x265.length() > 0;
});
Ptr<File> x266 = Vec::foldLeft(x264, x249.root_file, [&](auto x267, auto x268) {
bool x269 = x267 == nullptr || ({
bool x270 = Map::contains(x267->children, x268);
!x270;
});
Ptr<File> x271 = x269 ? nullptr : ({
Ptr<File> x272 = x267->children.at(x268);
x272;
});
return x271;
});
/* assertNeq */;
ASSERT((!(x266 == nullptr)), "file should exist in the copied file system");
/* modify a file in the copied file system */;
immer::flex_vector<PtrVal> x273 = immer::flex_vector<PtrVal>{intV_3, intV_4, intV_5};
// File.writeAtNoFill;
immer::flex_vector<PtrVal> x274 = x266->content.take(3);
immer::flex_vector<PtrVal> x275 = x274 + x273;
int x276 = x273.size();
immer::flex_vector<PtrVal> x277 = x266->content.drop(3 + x276);
immer::flex_vector<PtrVal> x278 = x275 + x277;
x266->content = x278;
/* check that the original file is not modified */;
/* getFile */;
immer::flex_vector<String> x279 = Vec::filter(x116, [&](auto x280) {
return x280.length() > 0;
});
Ptr<File> x281 = Vec::foldLeft(x279, x205.root_file, [&](auto x282, auto x283) {
bool x284 = x282 == nullptr || ({
bool x285 = Map::contains(x282->children, x283);
!x285;
});
Ptr<File> x286 = x284 ? nullptr : ({
Ptr<File> x287 = x282->children.at(x283);
x287;
});
return x286;
});
/* assertEq */;
ASSERT((x281->content == immer::flex_vector<PtrVal>{intV_0, intV_1, intV_2}), "file should not be modified");
/* add a file in the original system */;
Ptr<File> x288 = File::create("d");
/* setFile */;
immer::flex_vector<String> x289 = Str::split("/a/b/d", "/");
immer::flex_vector<String> x290 = Vec::filter(x289, [&](auto x291) {
return x291.length() > 0;
});
int x292 = x290.size();
immer::flex_vector<String> x293 = x290.take(x292 - 1);
Ptr<File> x294 = Vec::foldLeft(x293, x205.root_file, [&](auto x295, auto x296) {
bool x297 = x295 == nullptr || ({
bool x298 = Map::contains(x295->children, x296);
!x298;
});
Ptr<File> x299 = x297 ? nullptr : ({
Ptr<File> x300 = x295->children.at(x296);
x300;
});
return x299;
});
String x301 = x290.back();
String x302 = x288->name;
/* assertEq */;
ASSERT((x301 == x302), "setFile name should equal to last segment");
if (x294 != nullptr) {
x288->parent = x294;
immer::map<String, Ptr<File>> x303 = x294->children.insert(std::make_pair(x302, x288));
x294->children = x303;
}
/* check that the copied file system is not modified */;
/* getFile */;
immer::flex_vector<String> x304 = Vec::filter(x289, [&](auto x305) {
return x305.length() > 0;
});
Ptr<File> x306 = Vec::foldLeft(x304, x249.root_file, [&](auto x307, auto x308) {
bool x309 = x307 == nullptr || ({
bool x310 = Map::contains(x307->children, x308);
!x310;
});
Ptr<File> x311 = x309 ? nullptr : ({
Ptr<File> x312 = x307->children.at(x308);
x312;
});
return x311;
});
/* assertEq */;
ASSERT((x306 == nullptr), "file should not be added to the copied file system");
return std::monostate{};
}

int main(int argc, char *argv[]) {
  test(0);
  return 0;
} 
