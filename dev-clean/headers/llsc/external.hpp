/* LLSC - External utility functions and library modeling functions */
/* Generated by sai.llsc.TestGenerateExternal */
#ifndef LLSC_EXTERNAL_HEADERS_GEN
#define LLSC_EXTERNAL_HEADERS_GEN

/************* Function Declarations **************/
immer::flex_vector<std::pair<SS, PtrVal>> syscall_open(SS, immer::flex_vector<PtrVal>);
std::monostate syscall_open(SS, immer::flex_vector<PtrVal>, std::function<std::monostate(SS, PtrVal)>);
immer::flex_vector<std::pair<SS, PtrVal>> syscall_close(SS, immer::flex_vector<PtrVal>);
std::monostate syscall_close(SS, immer::flex_vector<PtrVal>, std::function<std::monostate(SS, PtrVal)>);
immer::flex_vector<std::pair<SS, PtrVal>> syscall_read(SS, immer::flex_vector<PtrVal>);
std::monostate syscall_read(SS, immer::flex_vector<PtrVal>, std::function<std::monostate(SS, PtrVal)>);
immer::flex_vector<std::pair<SS, PtrVal>> syscall_write(SS, immer::flex_vector<PtrVal>);
std::monostate syscall_write(SS, immer::flex_vector<PtrVal>, std::function<std::monostate(SS, PtrVal)>);
immer::flex_vector<std::pair<SS, PtrVal>> syscall_lseek(SS, immer::flex_vector<PtrVal>);
std::monostate syscall_lseek(SS, immer::flex_vector<PtrVal>, std::function<std::monostate(SS, PtrVal)>);
immer::flex_vector<std::pair<SS, PtrVal>> syscall_stat(SS, immer::flex_vector<PtrVal>);
std::monostate syscall_stat(SS, immer::flex_vector<PtrVal>, std::function<std::monostate(SS, PtrVal)>);
FS set_file(FS, String, Ptr<File>);

/************* Functions **************/
inline FS set_file(FS x323, String x324, Ptr<File> x325) {
/* setFile */;
Ptr<File> x326 = x323.root_file;
immer::flex_vector<String> x327 = Vec::filter(Str::split(x324, "/"), [&](auto x328) {
return x328.length() > 0;
});
Ptr<File> x329 = Vec::foldLeft(x327, x326, [&](auto x330, auto x331) {
bool x332 = x330 == nullptr || ({
bool x333 = Map::contains(x330->children, x331);
!x333;
});
Ptr<File> x334 = x332 ? nullptr : ({
Ptr<File> x335 = x330->children.at(x331);
x335;
});
return x334;
});
if (x329 != nullptr) {
immer::map<String, Ptr<File>> x336 = x329->children.insert(std::make_pair(x325->name, x325));
x329->children = x336;
}
return x323;
}
inline immer::flex_vector<std::pair<SS, PtrVal>> syscall_stat(SS x268, immer::flex_vector<PtrVal> x269) {
FS x270 = x268.get_fs();
PtrVal x271 = x269.at(0);
/* getFile */;
Ptr<File> x272 = x270.root_file;
immer::flex_vector<String> x273 = Str::split(get_string(x271, x268), "/");
immer::flex_vector<String> x274 = Vec::filter(x273, [&](auto x275) {
return x275.length() > 0;
});
Ptr<File> x276 = Vec::foldLeft(x274, x272, [&](auto x277, auto x278) {
bool x279 = x277 == nullptr || ({
bool x280 = Map::contains(x277->children, x278);
!x280;
});
Ptr<File> x281 = x279 ? nullptr : ({
Ptr<File> x282 = x277->children.at(x278);
x282;
});
return x281;
});
immer::flex_vector<std::pair<SS, PtrVal>> x283 = !(x276 != nullptr) ? ({
x268.set_fs(x270);
immer::flex_vector<std::pair<SS, PtrVal>>{std::make_pair(x268, make_IntV(-1L, 32))};
}) : ({
PtrVal x284 = x269.at(1);
/* getFile */;
immer::flex_vector<String> x285 = Vec::filter(x273, [&](auto x286) {
return x286.length() > 0;
});
Ptr<File> x287 = Vec::foldLeft(x285, x270.root_file, [&](auto x288, auto x289) {
bool x290 = x288 == nullptr || ({
bool x291 = Map::contains(x288->children, x289);
!x291;
});
Ptr<File> x292 = x290 ? nullptr : ({
Ptr<File> x293 = x288->children.at(x289);
x293;
});
return x292;
});
SS x294 = x268.update_seq(x284, x287->stat);
x294.set_fs(x270);
immer::flex_vector<std::pair<SS, PtrVal>>{std::make_pair(x294, make_IntV(0L, 32))};
});
return x283;
}
inline std::monostate syscall_stat(SS x295, immer::flex_vector<PtrVal> x296, std::function<std::monostate(SS, PtrVal)> x297) {
FS x298 = x295.get_fs();
PtrVal x299 = x296.at(0);
/* getFile */;
Ptr<File> x300 = x298.root_file;
immer::flex_vector<String> x301 = Str::split(get_string(x299, x295), "/");
immer::flex_vector<String> x302 = Vec::filter(x301, [&](auto x303) {
return x303.length() > 0;
});
Ptr<File> x304 = Vec::foldLeft(x302, x300, [&](auto x305, auto x306) {
bool x307 = x305 == nullptr || ({
bool x308 = Map::contains(x305->children, x306);
!x308;
});
Ptr<File> x309 = x307 ? nullptr : ({
Ptr<File> x310 = x305->children.at(x306);
x310;
});
return x309;
});
std::monostate x311 = !(x304 != nullptr) ? ({
x295.set_fs(x298);
x297(x295, make_IntV(-1L, 32));
}) : ({
PtrVal x312 = x296.at(1);
/* getFile */;
immer::flex_vector<String> x313 = Vec::filter(x301, [&](auto x314) {
return x314.length() > 0;
});
Ptr<File> x315 = Vec::foldLeft(x313, x298.root_file, [&](auto x316, auto x317) {
bool x318 = x316 == nullptr || ({
bool x319 = Map::contains(x316->children, x317);
!x319;
});
Ptr<File> x320 = x318 ? nullptr : ({
Ptr<File> x321 = x316->children.at(x317);
x321;
});
return x320;
});
SS x322 = x295.update_seq(x312, x315->stat);
x322.set_fs(x298);
x297(x322, make_IntV(0L, 32));
});
return x311;
}
inline immer::flex_vector<std::pair<SS, PtrVal>> syscall_lseek(SS x217, immer::flex_vector<PtrVal> x218) {
FS x219 = x217.get_fs();
PtrVal x220 = x218.at(0);
int x221 = (int)proj_IntV(x220);
immer::map<int, Ptr<Stream>> x222 = x219.opened_files;
bool x223 = Map::contains(x222, x221);
int64_t x224 = !x223 ? -1L : ({
PtrVal x225 = x218.at(2);
int x226 = (int)proj_IntV(x225);
immer::map<int, Ptr<Stream>> x227 = x219.opened_files;
int64_t x228 = x226 == SEEK_SET ? ({
PtrVal x229 = x218.at(1);
int64_t x230 = proj_IntV(x229);
int64_t x231 = x230 < 0L ? -1L : ({
Ptr<Stream> x232 = x227.at(x221);
x232->cursor = x230;
x230;
});
x231;
}) : ({
int64_t x233 = x226 == SEEK_CUR ? ({
PtrVal x229 = x218.at(1);
Ptr<Stream> x232 = x227.at(x221);
int64_t x234 = x232->cursor;
int64_t x235 = x234 + proj_IntV(x229);
int64_t x236 = x235 < 0L ? -1L : ({
x232->cursor = x235;
x235;
});
x236;
}) : ({
int64_t x237 = x226 == SEEK_END ? ({
PtrVal x229 = x218.at(1);
Ptr<Stream> x232 = x227.at(x221);
Ptr<File> x238 = x232->file;
int x239 = x238->content.size();
int64_t x240 = (int64_t)x239 + proj_IntV(x229);
int64_t x241 = x240 < 0L ? -1L : ({
x232->cursor = x240;
x240;
});
x241;
}) : -1L;
x237;
});
x233;
});
x228;
});
x217.set_fs(x219);
return immer::flex_vector<std::pair<SS, PtrVal>>{std::make_pair(x217, make_IntV(x224, 64))};
}
inline std::monostate syscall_lseek(SS x242, immer::flex_vector<PtrVal> x243, std::function<std::monostate(SS, PtrVal)> x244) {
FS x245 = x242.get_fs();
PtrVal x246 = x243.at(0);
int x247 = (int)proj_IntV(x246);
immer::map<int, Ptr<Stream>> x248 = x245.opened_files;
bool x249 = Map::contains(x248, x247);
int64_t x250 = !x249 ? -1L : ({
PtrVal x251 = x243.at(2);
int x252 = (int)proj_IntV(x251);
immer::map<int, Ptr<Stream>> x253 = x245.opened_files;
int64_t x254 = x252 == SEEK_SET ? ({
PtrVal x255 = x243.at(1);
int64_t x256 = proj_IntV(x255);
int64_t x257 = x256 < 0L ? -1L : ({
Ptr<Stream> x258 = x253.at(x247);
x258->cursor = x256;
x256;
});
x257;
}) : ({
int64_t x259 = x252 == SEEK_CUR ? ({
PtrVal x255 = x243.at(1);
Ptr<Stream> x258 = x253.at(x247);
int64_t x260 = x258->cursor;
int64_t x261 = x260 + proj_IntV(x255);
int64_t x262 = x261 < 0L ? -1L : ({
x258->cursor = x261;
x261;
});
x262;
}) : ({
int64_t x263 = x252 == SEEK_END ? ({
PtrVal x255 = x243.at(1);
Ptr<Stream> x258 = x253.at(x247);
Ptr<File> x264 = x258->file;
int x265 = x264->content.size();
int64_t x266 = (int64_t)x265 + proj_IntV(x255);
int64_t x267 = x266 < 0L ? -1L : ({
x258->cursor = x266;
x266;
});
x267;
}) : -1L;
x263;
});
x259;
});
x254;
});
x242.set_fs(x245);
return x244(x242, make_IntV(x250, 64));
}
inline immer::flex_vector<std::pair<SS, PtrVal>> syscall_write(SS x162, immer::flex_vector<PtrVal> x163) {
FS x164 = x162.get_fs();
PtrVal x165 = x163.at(0);
int x166 = (int)proj_IntV(x165);
immer::map<int, Ptr<Stream>> x167 = x164.opened_files;
bool x168 = Map::contains(x167, x166);
immer::flex_vector<std::pair<SS, PtrVal>> x169 = !x168 ? ({
x162.set_fs(x164);
immer::flex_vector<std::pair<SS, PtrVal>>{std::make_pair(x162, make_IntV(-1L, 64))};
}) : ({
PtrVal x170 = x163.at(1);
PtrVal x171 = x163.at(2);
int x172 = (int)proj_IntV(x171);
Ptr<Stream> x173 = x164.opened_files.at(x166);
immer::flex_vector<PtrVal> x174 = x162.at_seq(x170, x172).take((int)(int64_t)x172);
Ptr<File> x175 = x173->file;
int64_t x176 = x173->cursor;
// File.writeAt;
int x177 = (int)x176;
int x178 = x175->content.size();
int x179 = x177 - x178;
if (x179 > 0) {
immer::flex_vector<PtrVal> x180 = immer::flex_vector<PtrVal>(x179, IntV0);
immer::flex_vector<PtrVal> x181 = x175->content + x180;
x175->content = x181;
}
// File.writeAtNoFill;
immer::flex_vector<PtrVal> x182 = x175->content.take(x177);
immer::flex_vector<PtrVal> x183 = x182 + x174;
int x184 = x174.size();
immer::flex_vector<PtrVal> x185 = x175->content.drop(x177 + x184);
immer::flex_vector<PtrVal> x186 = x183 + x185;
x175->content = x186;
int64_t x187 = (int64_t)x184;
x173->cursor = x173->cursor + x187;
immer::map<int, Ptr<Stream>> x188 = x164.opened_files.insert(std::make_pair(x166, x173));
x164.opened_files = x188;
x162.set_fs(x164);
immer::flex_vector<std::pair<SS, PtrVal>>{std::make_pair(x162, make_IntV(x187, 64))};
});
return x169;
}
inline std::monostate syscall_write(SS x189, immer::flex_vector<PtrVal> x190, std::function<std::monostate(SS, PtrVal)> x191) {
FS x192 = x189.get_fs();
PtrVal x193 = x190.at(0);
int x194 = (int)proj_IntV(x193);
immer::map<int, Ptr<Stream>> x195 = x192.opened_files;
bool x196 = Map::contains(x195, x194);
std::monostate x197 = !x196 ? ({
x189.set_fs(x192);
x191(x189, make_IntV(-1L, 64));
}) : ({
PtrVal x198 = x190.at(1);
PtrVal x199 = x190.at(2);
int x200 = (int)proj_IntV(x199);
Ptr<Stream> x201 = x192.opened_files.at(x194);
immer::flex_vector<PtrVal> x202 = x189.at_seq(x198, x200).take((int)(int64_t)x200);
Ptr<File> x203 = x201->file;
int64_t x204 = x201->cursor;
// File.writeAt;
int x205 = (int)x204;
int x206 = x203->content.size();
int x207 = x205 - x206;
if (x207 > 0) {
immer::flex_vector<PtrVal> x208 = immer::flex_vector<PtrVal>(x207, IntV0);
immer::flex_vector<PtrVal> x209 = x203->content + x208;
x203->content = x209;
}
// File.writeAtNoFill;
immer::flex_vector<PtrVal> x210 = x203->content.take(x205);
immer::flex_vector<PtrVal> x211 = x210 + x202;
int x212 = x202.size();
immer::flex_vector<PtrVal> x213 = x203->content.drop(x205 + x212);
immer::flex_vector<PtrVal> x214 = x211 + x213;
x203->content = x214;
int64_t x215 = (int64_t)x212;
x201->cursor = x201->cursor + x215;
immer::map<int, Ptr<Stream>> x216 = x192.opened_files.insert(std::make_pair(x194, x201));
x192.opened_files = x216;
x189.set_fs(x192);
x191(x189, make_IntV(x215, 64));
});
return x197;
}
inline immer::flex_vector<std::pair<SS, PtrVal>> syscall_read(SS x127, immer::flex_vector<PtrVal> x128) {
FS x129 = x127.get_fs();
PtrVal x130 = x128.at(0);
int x131 = (int)proj_IntV(x130);
immer::map<int, Ptr<Stream>> x132 = x129.opened_files;
bool x133 = Map::contains(x132, x131);
immer::flex_vector<std::pair<SS, PtrVal>> x134 = !x133 ? ({
x127.set_fs(x129);
immer::flex_vector<std::pair<SS, PtrVal>>{std::make_pair(x127, make_IntV(-1L, 64))};
}) : ({
PtrVal x135 = x128.at(1);
PtrVal x136 = x128.at(2);
Ptr<Stream> x137 = x129.opened_files.at(x131);
immer::flex_vector<PtrVal> x138 = x137->file->content.drop((int)x137->cursor);
immer::flex_vector<PtrVal> x139 = x138.take((int)(int64_t)(int)proj_IntV(x136));
int x140 = x139.size();
int64_t x141 = (int64_t)x140;
x137->cursor = x137->cursor + x141;
immer::map<int, Ptr<Stream>> x142 = x129.opened_files.insert(std::make_pair(x131, x137));
x129.opened_files = x142;
SS x143 = x127.update_seq(x135, x139);
x143.set_fs(x129);
immer::flex_vector<std::pair<SS, PtrVal>>{std::make_pair(x143, make_IntV(x141, 64))};
});
return x134;
}
inline std::monostate syscall_read(SS x144, immer::flex_vector<PtrVal> x145, std::function<std::monostate(SS, PtrVal)> x146) {
FS x147 = x144.get_fs();
PtrVal x148 = x145.at(0);
int x149 = (int)proj_IntV(x148);
immer::map<int, Ptr<Stream>> x150 = x147.opened_files;
bool x151 = Map::contains(x150, x149);
std::monostate x152 = !x151 ? ({
x144.set_fs(x147);
x146(x144, make_IntV(-1L, 64));
}) : ({
PtrVal x153 = x145.at(1);
PtrVal x154 = x145.at(2);
Ptr<Stream> x155 = x147.opened_files.at(x149);
immer::flex_vector<PtrVal> x156 = x155->file->content.drop((int)x155->cursor);
immer::flex_vector<PtrVal> x157 = x156.take((int)(int64_t)(int)proj_IntV(x154));
int x158 = x157.size();
int64_t x159 = (int64_t)x158;
x155->cursor = x155->cursor + x159;
immer::map<int, Ptr<Stream>> x160 = x147.opened_files.insert(std::make_pair(x149, x155));
x147.opened_files = x160;
SS x161 = x144.update_seq(x153, x157);
x161.set_fs(x147);
x146(x161, make_IntV(x159, 64));
});
return x152;
}
inline immer::flex_vector<std::pair<SS, PtrVal>> syscall_close(SS x58, immer::flex_vector<PtrVal> x59) {
FS x60 = x58.get_fs();
PtrVal x61 = x59.at(0);
int x62 = (int)proj_IntV(x61);
immer::map<int, Ptr<Stream>> x63 = x60.opened_files;
bool x64 = Map::contains(x63, x62);
immer::flex_vector<std::pair<SS, PtrVal>> x65 = !x64 ? ({
x58.set_fs(x60);
immer::flex_vector<std::pair<SS, PtrVal>>{std::make_pair(x58, make_IntV(-1L, 32))};
}) : ({
Ptr<Stream> x66 = x60.opened_files.at(x62);
Ptr<File> x67 = x66->file;
/* getFile */;
Ptr<File> x68 = x60.root_file;
immer::flex_vector<String> x69 = Str::split(x67->name, "/");
immer::flex_vector<String> x70 = Vec::filter(x69, [&](auto x71) {
return x71.length() > 0;
});
Ptr<File> x72 = Vec::foldLeft(x70, x68, [&](auto x73, auto x74) {
bool x75 = x73 == nullptr || ({
bool x76 = Map::contains(x73->children, x74);
!x76;
});
Ptr<File> x77 = x75 ? nullptr : ({
Ptr<File> x78 = x73->children.at(x74);
x78;
});
return x77;
});
if (x72 != nullptr) {
Ptr<File> x79 = x66->file;
/* setFile */;
Ptr<File> x80 = x60.root_file;
immer::flex_vector<String> x81 = Vec::filter(x69, [&](auto x82) {
return x82.length() > 0;
});
Ptr<File> x83 = Vec::foldLeft(x81, x80, [&](auto x84, auto x85) {
bool x86 = x84 == nullptr || ({
bool x87 = Map::contains(x84->children, x85);
!x87;
});
Ptr<File> x88 = x86 ? nullptr : ({
Ptr<File> x89 = x84->children.at(x85);
x89;
});
return x88;
});
if (x83 != nullptr) {
immer::map<String, Ptr<File>> x90 = x83->children.insert(std::make_pair(x79->name, x79));
x83->children = x90;
}
immer::map<int, Ptr<Stream>> x91 = x60.opened_files.erase(x62);
x60.opened_files = x91;
}
x58.set_fs(x60);
immer::flex_vector<std::pair<SS, PtrVal>>{std::make_pair(x58, make_IntV(0L, 32))};
});
return x65;
}
inline std::monostate syscall_close(SS x92, immer::flex_vector<PtrVal> x93, std::function<std::monostate(SS, PtrVal)> x94) {
FS x95 = x92.get_fs();
PtrVal x96 = x93.at(0);
int x97 = (int)proj_IntV(x96);
immer::map<int, Ptr<Stream>> x98 = x95.opened_files;
bool x99 = Map::contains(x98, x97);
std::monostate x100 = !x99 ? ({
x92.set_fs(x95);
x94(x92, make_IntV(-1L, 32));
}) : ({
Ptr<Stream> x101 = x95.opened_files.at(x97);
Ptr<File> x102 = x101->file;
/* getFile */;
Ptr<File> x103 = x95.root_file;
immer::flex_vector<String> x104 = Str::split(x102->name, "/");
immer::flex_vector<String> x105 = Vec::filter(x104, [&](auto x106) {
return x106.length() > 0;
});
Ptr<File> x107 = Vec::foldLeft(x105, x103, [&](auto x108, auto x109) {
bool x110 = x108 == nullptr || ({
bool x111 = Map::contains(x108->children, x109);
!x111;
});
Ptr<File> x112 = x110 ? nullptr : ({
Ptr<File> x113 = x108->children.at(x109);
x113;
});
return x112;
});
if (x107 != nullptr) {
Ptr<File> x114 = x101->file;
/* setFile */;
Ptr<File> x115 = x95.root_file;
immer::flex_vector<String> x116 = Vec::filter(x104, [&](auto x117) {
return x117.length() > 0;
});
Ptr<File> x118 = Vec::foldLeft(x116, x115, [&](auto x119, auto x120) {
bool x121 = x119 == nullptr || ({
bool x122 = Map::contains(x119->children, x120);
!x122;
});
Ptr<File> x123 = x121 ? nullptr : ({
Ptr<File> x124 = x119->children.at(x120);
x124;
});
return x123;
});
if (x118 != nullptr) {
immer::map<String, Ptr<File>> x125 = x118->children.insert(std::make_pair(x114->name, x114));
x118->children = x125;
}
immer::map<int, Ptr<Stream>> x126 = x95.opened_files.erase(x97);
x95.opened_files = x126;
}
x92.set_fs(x95);
x94(x92, make_IntV(0L, 32));
});
return x100;
}
inline immer::flex_vector<std::pair<SS, PtrVal>> syscall_open(SS x1, immer::flex_vector<PtrVal> x2) {
FS x3 = x1.get_fs();
PtrVal x4 = x2.at(0);
/* getFile */;
Ptr<File> x5 = x3.root_file;
immer::flex_vector<String> x6 = Str::split(get_string(x4, x1), "/");
immer::flex_vector<String> x7 = Vec::filter(x6, [&](auto x8) {
return x8.length() > 0;
});
Ptr<File> x9 = Vec::foldLeft(x7, x5, [&](auto x10, auto x11) {
bool x12 = x10 == nullptr || ({
bool x13 = Map::contains(x10->children, x11);
!x13;
});
Ptr<File> x14 = x12 ? nullptr : ({
Ptr<File> x15 = x10->children.at(x11);
x15;
});
return x14;
});
immer::flex_vector<std::pair<SS, PtrVal>> x16 = !(x9 != nullptr) ? ({
x1.set_fs(x3);
immer::flex_vector<std::pair<SS, PtrVal>>{std::make_pair(x1, make_IntV(-1L, 32))};
}) : ({
int x17 = x3.get_fresh_fd();
/* getFile */;
immer::flex_vector<String> x18 = Vec::filter(x6, [&](auto x19) {
return x19.length() > 0;
});
Ptr<File> x20 = Vec::foldLeft(x18, x3.root_file, [&](auto x21, auto x22) {
bool x23 = x21 == nullptr || ({
bool x24 = Map::contains(x21->children, x22);
!x24;
});
Ptr<File> x25 = x23 ? nullptr : ({
Ptr<File> x26 = x21->children.at(x22);
x26;
});
return x25;
});
Ptr<Stream> x27 = Stream::create(x20);
immer::map<int, Ptr<Stream>> x28 = x3.opened_files.insert(std::make_pair(x17, x27));
x3.opened_files = x28;
x1.set_fs(x3);
immer::flex_vector<std::pair<SS, PtrVal>>{std::make_pair(x1, make_IntV((int64_t)x17, 32))};
});
return x16;
}
inline std::monostate syscall_open(SS x29, immer::flex_vector<PtrVal> x30, std::function<std::monostate(SS, PtrVal)> x31) {
FS x32 = x29.get_fs();
PtrVal x33 = x30.at(0);
/* getFile */;
Ptr<File> x34 = x32.root_file;
immer::flex_vector<String> x35 = Str::split(get_string(x33, x29), "/");
immer::flex_vector<String> x36 = Vec::filter(x35, [&](auto x37) {
return x37.length() > 0;
});
Ptr<File> x38 = Vec::foldLeft(x36, x34, [&](auto x39, auto x40) {
bool x41 = x39 == nullptr || ({
bool x42 = Map::contains(x39->children, x40);
!x42;
});
Ptr<File> x43 = x41 ? nullptr : ({
Ptr<File> x44 = x39->children.at(x40);
x44;
});
return x43;
});
std::monostate x45 = !(x38 != nullptr) ? ({
x29.set_fs(x32);
x31(x29, make_IntV(-1L, 32));
}) : ({
int x46 = x32.get_fresh_fd();
/* getFile */;
immer::flex_vector<String> x47 = Vec::filter(x35, [&](auto x48) {
return x48.length() > 0;
});
Ptr<File> x49 = Vec::foldLeft(x47, x32.root_file, [&](auto x50, auto x51) {
bool x52 = x50 == nullptr || ({
bool x53 = Map::contains(x50->children, x51);
!x53;
});
Ptr<File> x54 = x52 ? nullptr : ({
Ptr<File> x55 = x50->children.at(x51);
x55;
});
return x54;
});
Ptr<Stream> x56 = Stream::create(x49);
immer::map<int, Ptr<Stream>> x57 = x32.opened_files.insert(std::make_pair(x46, x56));
x32.opened_files = x57;
x29.set_fs(x32);
x31(x29, make_IntV((int64_t)x46, 32));
});
return x45;
}
#endif // LLSC_EXTERNAL_HEADERS_GEN
