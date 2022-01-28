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

/************* Functions **************/
inline immer::flex_vector<std::pair<SS, PtrVal>> write(SS x40, immer::flex_vector<PtrVal> x41) {
  PtrVal x42 = x41.at(0);
  PtrVal x43 = x41.at(1);
  PtrVal x44 = x41.at(2);
  int x45 = proj_IntV(x44);
  FS x46 = x40.get_fs();
  int x47 = x46.write_file(proj_IntV(x42), x40.at_seq(x43, x45), x45);
  x40.set_fs(x46);
  return immer::flex_vector<std::pair<SS, PtrVal>>{std::make_pair(x40, make_IntV(x47, 32))};
}
inline std::monostate write(SS x48, immer::flex_vector<PtrVal> x49, std::function<std::monostate(SS, PtrVal)> x50) {
  PtrVal x51 = x49.at(0);
  PtrVal x52 = x49.at(1);
  PtrVal x53 = x49.at(2);
  int x54 = proj_IntV(x53);
  FS x55 = x48.get_fs();
  int x56 = x55.write_file(proj_IntV(x51), x48.at_seq(x52, x54), x54);
  x48.set_fs(x55);
  return x50(x48, make_IntV(x56, 32));
}
inline immer::flex_vector<std::pair<SS, PtrVal>> read(SS x23, immer::flex_vector<PtrVal> x24) {
  PtrVal x25 = x24.at(0);
  PtrVal x26 = x24.at(1);
  PtrVal x27 = x24.at(2);
  FS x28 = x23.get_fs();
  std::pair<immer::flex_vector<PtrVal>, int> x29 = x28.read_file(proj_IntV(x25), proj_IntV(x27));
  SS x30 = x23.update_seq(x26, std::get<0>(x29));
  x30.set_fs(x28);
  return immer::flex_vector<std::pair<SS, PtrVal>>{std::make_pair(x30, make_IntV(std::get<1>(x29), 32))};
}
inline std::monostate read(SS x31, immer::flex_vector<PtrVal> x32, std::function<std::monostate(SS, PtrVal)> x33) {
  PtrVal x34 = x32.at(0);
  PtrVal x35 = x32.at(1);
  PtrVal x36 = x32.at(2);
  FS x37 = x31.get_fs();
  std::pair<immer::flex_vector<PtrVal>, int> x38 = x37.read_file(proj_IntV(x34), proj_IntV(x36));
  SS x39 = x31.update_seq(x35, std::get<0>(x38));
  x39.set_fs(x37);
  return x33(x39, make_IntV(std::get<1>(x38), 32));
}
inline immer::flex_vector<std::pair<SS, PtrVal>> close(SS x12, immer::flex_vector<PtrVal> x13) {
  PtrVal x14 = x13.at(0);
  FS x15 = x12.get_fs();
  int x16 = x15.close_file(proj_IntV(x14->to_IntV()));
  x12.set_fs(x15);
  return immer::flex_vector<std::pair<SS, PtrVal>>{std::make_pair(x12, make_IntV(x16, 32))};
}
inline std::monostate close(SS x17, immer::flex_vector<PtrVal> x18, std::function<std::monostate(SS, PtrVal)> x19) {
  PtrVal x20 = x18.at(0);
  FS x21 = x17.get_fs();
  int x22 = x21.close_file(proj_IntV(x20->to_IntV()));
  x17.set_fs(x21);
  return x19(x17, make_IntV(x22, 32));
}
inline immer::flex_vector<std::pair<SS, PtrVal>> open(SS x1, immer::flex_vector<PtrVal> x2) {
  PtrVal x3 = x2.at(0);
  FS x4 = x1.get_fs();
  int x5 = x4.open_file(get_string(x3, x1), 0);
  x1.set_fs(x4);
  return immer::flex_vector<std::pair<SS, PtrVal>>{std::make_pair(x1, make_IntV(x5, 32))};
}
inline std::monostate open(SS x6, immer::flex_vector<PtrVal> x7, std::function<std::monostate(SS, PtrVal)> x8) {
  PtrVal x9 = x7.at(0);
  FS x10 = x6.get_fs();
  int x11 = x10.open_file(get_string(x9, x6), 0);
  x6.set_fs(x10);
  return x8(x6, make_IntV(x11, 32));
}
#endif // LLSC_EXTERNAL_HEADERS_GEN
