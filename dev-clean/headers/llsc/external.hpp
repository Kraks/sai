/* LLSC - External utility functions and library modeling functions */
/* Generated by sai.llsc.TestGenerateExternal */
#ifndef LLSC_EXTERNAL_HEADERS_GEN
#define LLSC_EXTERNAL_HEADERS_GEN

/************* Function Declarations **************/
immer::flex_vector<std::pair<SS, PtrVal>> open(SS, immer::flex_vector<PtrVal>);
std::monostate open(SS, immer::flex_vector<PtrVal>, std::function<std::monostate(SS, PtrVal)>);
immer::flex_vector<std::pair<SS, PtrVal>> close(SS, immer::flex_vector<PtrVal>);
std::monostate close(SS, immer::flex_vector<PtrVal>, std::function<std::monostate(SS, PtrVal)>);
immer::flex_vector<std::pair<SS, PtrVal>> read(SS, immer::flex_vector<PtrVal>);
std::monostate read(SS, immer::flex_vector<PtrVal>, std::function<std::monostate(SS, PtrVal)>);
immer::flex_vector<std::pair<SS, PtrVal>> write(SS, immer::flex_vector<PtrVal>);
std::monostate write(SS, immer::flex_vector<PtrVal>, std::function<std::monostate(SS, PtrVal)>);
immer::flex_vector<std::pair<SS, PtrVal>> lseek(SS, immer::flex_vector<PtrVal>);
std::monostate lseek(SS, immer::flex_vector<PtrVal>, std::function<std::monostate(SS, PtrVal)>);
immer::flex_vector<std::pair<SS, PtrVal>> stat(SS, immer::flex_vector<PtrVal>);
std::monostate stat(SS, immer::flex_vector<PtrVal>, std::function<std::monostate(SS, PtrVal)>);

/************* Functions **************/
inline immer::flex_vector<std::pair<SS, PtrVal>> stat(SS x106, immer::flex_vector<PtrVal> x107) {
PtrVal x108 = x107.at(0);
FS x109 = x106.get_fs();
std::pair<immer::flex_vector<PtrVal>, int> x110 = x109.stat_file(get_string(x108, x106));
int x111 = std::get<1>(x110);
immer::flex_vector<std::pair<SS, PtrVal>> x112 = x111 == 0 ? ({
PtrVal x113 = x107.at(1);
SS x114 = x106.update_seq(x113, std::get<0>(x110));
x114.set_fs(x109);
immer::flex_vector<std::pair<SS, PtrVal>>{std::make_pair(x114, make_IntV((int64_t)x111, 32))};
}) : immer::flex_vector<std::pair<SS, PtrVal>>{std::make_pair(x106, make_IntV((int64_t)x111, 32))};
return x112;
}
inline std::monostate stat(SS x115, immer::flex_vector<PtrVal> x116, std::function<std::monostate(SS, PtrVal)> x117) {
PtrVal x118 = x116.at(0);
FS x119 = x115.get_fs();
std::pair<immer::flex_vector<PtrVal>, int> x120 = x119.stat_file(get_string(x118, x115));
int x121 = std::get<1>(x120);
std::monostate x122 = x121 == 0 ? ({
PtrVal x123 = x116.at(1);
SS x124 = x115.update_seq(x123, std::get<0>(x120));
x124.set_fs(x119);
x117(x124, make_IntV((int64_t)x121, 32));
}) : x117(x115, make_IntV((int64_t)x121, 32));
return x122;
}
inline immer::flex_vector<std::pair<SS, PtrVal>> lseek(SS x91, immer::flex_vector<PtrVal> x92) {
PtrVal x93 = x92.at(0);
PtrVal x94 = x92.at(1);
PtrVal x95 = x92.at(2);
FS x96 = x91.get_fs();
int64_t x97 = x96.seek_file((int64_t)proj_IntV(x93), (int64_t)proj_IntV(x94), (int64_t)proj_IntV(x95));
x91.set_fs(x96);
return immer::flex_vector<std::pair<SS, PtrVal>>{std::make_pair(x91, make_IntV(x97, 64))};
}
inline std::monostate lseek(SS x98, immer::flex_vector<PtrVal> x99, std::function<std::monostate(SS, PtrVal)> x100) {
PtrVal x101 = x99.at(0);
PtrVal x102 = x99.at(1);
PtrVal x103 = x99.at(2);
FS x104 = x98.get_fs();
int64_t x105 = x104.seek_file((int64_t)proj_IntV(x101), (int64_t)proj_IntV(x102), (int64_t)proj_IntV(x103));
x98.set_fs(x104);
return x100(x98, make_IntV(x105, 64));
}
inline immer::flex_vector<std::pair<SS, PtrVal>> write(SS x66, immer::flex_vector<PtrVal> x67) {
PtrVal x68 = x67.at(0);
int64_t x69 = (int64_t)proj_IntV(x68);
FS x70 = x66.get_fs();
bool x71 = x70.has_stream(x69);
immer::flex_vector<std::pair<SS, PtrVal>> x72 = !x71 ? immer::flex_vector<std::pair<SS, PtrVal>>{std::make_pair(x66, make_IntV(-1L, 64))} : ({
PtrVal x73 = x67.at(1);
PtrVal x74 = x67.at(2);
int64_t x75 = (int64_t)proj_IntV(x74);
Stream x76 = x70.get_stream(x69);
int x77 = x76.write(x66.at_seq(x73, x75), x75);
x70.set_stream(x69, x76);
x66.set_fs(x70);
immer::flex_vector<std::pair<SS, PtrVal>>{std::make_pair(x66, make_IntV((int64_t)x77, 64))};
});
return x72;
}
inline std::monostate write(SS x78, immer::flex_vector<PtrVal> x79, std::function<std::monostate(SS, PtrVal)> x80) {
PtrVal x81 = x79.at(0);
int64_t x82 = (int64_t)proj_IntV(x81);
FS x83 = x78.get_fs();
bool x84 = x83.has_stream(x82);
std::monostate x85 = !x84 ? x80(x78, make_IntV(-1L, 64)) : ({
PtrVal x86 = x79.at(1);
PtrVal x87 = x79.at(2);
int64_t x88 = (int64_t)proj_IntV(x87);
Stream x89 = x83.get_stream(x82);
int x90 = x89.write(x78.at_seq(x86, x88), x88);
x83.set_stream(x82, x89);
x78.set_fs(x83);
x80(x78, make_IntV((int64_t)x90, 64));
});
return x85;
}
inline immer::flex_vector<std::pair<SS, PtrVal>> read(SS x39, immer::flex_vector<PtrVal> x40) {
PtrVal x41 = x40.at(0);
int64_t x42 = (int64_t)proj_IntV(x41);
FS x43 = x39.get_fs();
bool x44 = x43.has_stream(x42);
immer::flex_vector<std::pair<SS, PtrVal>> x45 = !x44 ? immer::flex_vector<std::pair<SS, PtrVal>>{std::make_pair(x39, make_IntV(-1L, 64))} : ({
PtrVal x46 = x40.at(1);
PtrVal x47 = x40.at(2);
Stream x48 = x43.get_stream(x42);
immer::flex_vector<PtrVal> x49 = x48.read((int64_t)proj_IntV(x47));
x43.set_stream(x42, x48);
int x50 = x49.size();
SS x51 = x39.update_seq(x46, x49);
x51.set_fs(x43);
immer::flex_vector<std::pair<SS, PtrVal>>{std::make_pair(x51, make_IntV((int64_t)x50, 64))};
});
return x45;
}
inline std::monostate read(SS x52, immer::flex_vector<PtrVal> x53, std::function<std::monostate(SS, PtrVal)> x54) {
PtrVal x55 = x53.at(0);
int64_t x56 = (int64_t)proj_IntV(x55);
FS x57 = x52.get_fs();
bool x58 = x57.has_stream(x56);
std::monostate x59 = !x58 ? x54(x52, make_IntV(-1L, 64)) : ({
PtrVal x60 = x53.at(1);
PtrVal x61 = x53.at(2);
Stream x62 = x57.get_stream(x56);
immer::flex_vector<PtrVal> x63 = x62.read((int64_t)proj_IntV(x61));
x57.set_stream(x56, x62);
int x64 = x63.size();
SS x65 = x52.update_seq(x60, x63);
x65.set_fs(x57);
x54(x65, make_IntV((int64_t)x64, 64));
});
return x59;
}
inline immer::flex_vector<std::pair<SS, PtrVal>> close(SS x18, immer::flex_vector<PtrVal> x19) {
PtrVal x20 = x19.at(0);
int64_t x21 = (int64_t)proj_IntV(x20->to_IntV());
FS x22 = x18.get_fs();
bool x23 = x22.has_stream(x21);
immer::flex_vector<std::pair<SS, PtrVal>> x24 = !x23 ? immer::flex_vector<std::pair<SS, PtrVal>>{std::make_pair(x18, make_IntV(-1L, 32))} : ({
Stream x25 = x22.get_stream(x21);
String x26 = x25.get_name();
bool x27 = x22.has_file(x26);
if (x27) {
x22.set_file(x26, x25.get_file());
x22.remove_stream(x21);
}
immer::flex_vector<std::pair<SS, PtrVal>>{std::make_pair(x18, make_IntV(0L, 32))};
});
return x24;
}
inline std::monostate close(SS x28, immer::flex_vector<PtrVal> x29, std::function<std::monostate(SS, PtrVal)> x30) {
PtrVal x31 = x29.at(0);
int64_t x32 = (int64_t)proj_IntV(x31->to_IntV());
FS x33 = x28.get_fs();
bool x34 = x33.has_stream(x32);
std::monostate x35 = !x34 ? x30(x28, make_IntV(-1L, 32)) : ({
Stream x36 = x33.get_stream(x32);
String x37 = x36.get_name();
bool x38 = x33.has_file(x37);
if (x38) {
x33.set_file(x37, x36.get_file());
x33.remove_stream(x32);
}
x30(x28, make_IntV(0L, 32));
});
return x35;
}
inline immer::flex_vector<std::pair<SS, PtrVal>> open(SS x1, immer::flex_vector<PtrVal> x2) {
PtrVal x3 = x2.at(0);
String x4 = get_string(x3, x1);
FS x5 = x1.get_fs();
bool x6 = x5.has_file(x4);
immer::flex_vector<std::pair<SS, PtrVal>> x7 = !x6 ? immer::flex_vector<std::pair<SS, PtrVal>>{std::make_pair(x1, make_IntV(-1L, 32))} : ({
int x8 = x5.get_fresh_fd();
x5.set_stream(x8, Stream(x5.get_file(x4)));
x1.set_fs(x5);
immer::flex_vector<std::pair<SS, PtrVal>>{std::make_pair(x1, make_IntV((int64_t)x8, 32))};
});
return x7;
}
inline std::monostate open(SS x9, immer::flex_vector<PtrVal> x10, std::function<std::monostate(SS, PtrVal)> x11) {
PtrVal x12 = x10.at(0);
String x13 = get_string(x12, x9);
FS x14 = x9.get_fs();
bool x15 = x14.has_file(x13);
std::monostate x16 = !x15 ? x11(x9, make_IntV(-1L, 32)) : ({
int x17 = x14.get_fresh_fd();
x14.set_stream(x17, Stream(x14.get_file(x13)));
x9.set_fs(x14);
x11(x9, make_IntV((int64_t)x17, 32));
});
return x16;
}
#endif // LLSC_EXTERNAL_HEADERS_GEN
