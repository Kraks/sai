#ifndef LLSC_EXTERNAL_PURE_HEADERS
#define LLSC_EXTERNAL_PURE_HEADERS

// TODO: move somewhere top level
template<typename T> using List = immer::flex_vector<T>;
using SSVal = std::pair<SS, PtrVal>;
inline std::monostate operator+ (const std::monostate& lhs, const std::monostate& rhs) {
  return std::monostate{};
}

template<typename T> using __Cont = std::function<T(SS, PtrVal)>;
template<typename T> using __Halt = std::function<T(SS, List<PtrVal>)>;
using Cont = std::function<std::monostate(SS, PtrVal)>;

inline std::string get_string(PtrVal ptr, SS state) {
  std::string name;
  char c = proj_IntV_char(state.at(ptr)); // c = *ptr
  while (c != '\0') {
    name += c;
    ptr = make_LocV_inc(ptr, 1); // ptr++
    c = proj_IntV_char(state.at(ptr)); // c = *ptr
  }
  return name;
}

inline List<SSVal> stop(SS state, List<PtrVal> args) {
  check_pc_to_file(state);
  return List<std::pair<SS, PtrVal>>{};
}
inline std::monostate stop(SS state, List<PtrVal> args, Cont k) {
  check_pc_to_file(state);
  return std::monostate();
}
inline List<SSVal> noop(SS state, List<PtrVal> args) {
  return List<std::pair<SS, PtrVal>>{{state, make_IntV(0)}};
}

/******************************************************************************/

template<typename T>
inline T __sym_print(SS& state, List<PtrVal>& args, __Cont<T> k) {
  for (auto x : args) {
    std::cout << ((x == nullptr) ? "nullptr" : x->toString()) << ";" << std::endl;
  }
  return k(state, make_IntV(0));
}

inline List<SSVal> sym_print(SS state, List<PtrVal> args) {
  return __sym_print<List<SSVal>>(state, args, [](auto s, auto v) { return List<SSVal>{{s, v}}; });
}

inline std::monostate sym_print(SS state, List<PtrVal> args, Cont k) {
  return __sym_print<std::monostate>(state, args, [&k](auto s, auto v) { return k(s, v); });
}

/******************************************************************************/

template<typename T>
inline T __print_string(SS& state, List<PtrVal>& args, __Cont<T> k) {
  PtrVal x = args.at(0);
  if (std::dynamic_pointer_cast<LocV>(x)) {
    std::cout << get_string(x, state) << std::endl;
    return k(state, make_IntV(0));
  }
  ABORT("Cannot print non-LocV value as string");
}

inline List<SSVal> print_string(SS state, List<PtrVal> args) {
  return __print_string<List<SSVal>>(state, args, [](auto s, auto v) { return List<SSVal>{{s, v}}; });
}

inline std::monostate print_string(SS state, List<PtrVal> args, Cont k) {
  return __print_string<std::monostate>(state, args, [&k](auto s, auto v) { return k(s, v); });
}

/******************************************************************************/

template<typename T>
inline T __malloc(SS& state, List<PtrVal>& args, __Cont<T> k) {
  IntData bytes = proj_IntV(args.at(0));
  auto emptyMem = List<PtrVal>(bytes, nullptr);
  PtrVal memLoc = make_LocV(state.heap_size(), LocV::kHeap, bytes);
  if (exlib_failure_branch) {
    // simulating the failed branch
    return k(state.heap_append(emptyMem), memLoc) + k(state, make_LocV_null());
  }
  return k(state.heap_append(emptyMem), memLoc);
}

inline List<SSVal> malloc(SS state, List<PtrVal> args) {
  return __malloc<List<SSVal>>(state, args, [](auto s, auto v) { return List<SSVal>{{s, v}}; });
}

inline std::monostate malloc(SS state, List<PtrVal> args, Cont k) {
  // TODO: in the thread pool version, we should add task into the pool
  return __malloc<std::monostate>(state, args, [&k](auto s, auto v) { return k(s, v); });
}

/******************************************************************************/

inline List<std::pair<SS, PtrVal>> realloc(SS state, List<PtrVal> args) {
  Addr src = proj_LocV(args.at(0));
  IntData bytes = proj_IntV(args.at(1));

  auto emptyMem = List<PtrVal>(bytes, nullptr);
  std::cout << "realloc size: " << emptyMem.size() << std::endl;
  PtrVal memLoc = make_LocV(state.heap_size(), LocV::kHeap, bytes);
  IntData prevBytes = proj_LocV_size(args.at(0));
  std::cout << "prev size: " << prevBytes << std::endl;
  SS res = state.heap_append(emptyMem);
  for (int i = 0; i < prevBytes; i++) {
    res = res.update(make_LocV_inc(memLoc, i), res.heap_lookup(src + i));
  }
  return List<std::pair<SS, PtrVal>>{{res, memLoc}};
}

/******************************************************************************/

template<typename T>
inline T __sym_exit(SS& state, List<PtrVal>& args, __Cont<T> k) {
  ASSERT(args.size() == 1, "sym_exit accepts exactly one argument");
  auto v = args.at(0)->to_IntV();
  ASSERT(v != nullptr, "sym_exit only accepts integer argument");
  int status = v->as_signed();
  check_pc_to_file(state);
#ifdef USE_TP
  // XXX: brutally call _exit? then what should happen if two threads are calling sym_exit?
  tp.stop_all_tasks();
  set_exit_code(status);
  return k(state, nullptr);
#else
  cov.print_all();
  _exit(status);
#endif
}

inline List<std::pair<SS, PtrVal>> sym_exit(SS state, List<PtrVal> args) {
  return __sym_exit<List<SSVal>>(state, args, [](auto s, auto v) { return List<std::pair<SS, PtrVal>>{}; });
}

inline std::monostate sym_exit(SS state, List<PtrVal> args, Cont k) {
  return __sym_exit<std::monostate>(state, args, [](auto s, auto v) { return std::monostate{}; });
}

/******************************************************************************/

template<typename T>
inline T __llsc_assert(SS& state, List<PtrVal>& args, __Cont<T> k, __Halt<T> h) {
  auto v = args.at(0);
  auto i = v->to_IntV();
  if (i) {
    if (i->i == 0) return h(state, { make_IntV(-1) }); // concrete false - generate the test and ``halt''
    return k(state, make_IntV(1, 32));
  }
  // otherwise add a symbolic condition that constraints it to be true
  // undefined/error if v is a value of other types
  auto cond = to_SMTNeg(v);
  auto new_s = state.add_PC(cond);
  if (check_pc(new_s.get_PC())) return h(new_s, { make_IntV(-1) }); // check if v == 1 is not valid
  return k(state.add_PC(v), make_IntV(1, 32));
}

inline List<std::pair<SS, PtrVal>> llsc_assert(SS state, List<PtrVal> args) {
  return __llsc_assert<List<SSVal>>(state, args,
      [](auto s, auto v) { return List<SSVal>{{s, v}}; },
      [](auto s, auto a) { return stop(s, a); });
}

inline std::monostate llsc_assert(SS state, List<PtrVal> args, Cont k) {
  return __llsc_assert<std::monostate>(state, args,
      [&k](auto s, auto v) { return k(s, v); },
      [&k](auto s, auto a) { return stop(s, a, k); });
}

inline List<std::pair<SS, PtrVal>> llsc_assert_eager(SS state, List<PtrVal> args) {
  return __llsc_assert<List<SSVal>>(state, args,
      [](auto s, auto v) { return List<SSVal>{{s, v}}; },
      [](auto s, auto a) { return sym_exit(s, a); });
}

inline std::monostate llsc_assert_eager(SS state, List<PtrVal> args, Cont k) {
  return __llsc_assert<std::monostate>(state, args,
      [&k](auto s, auto v) { return k(s, v); },
      [&k](auto s, auto a) { return sym_exit(s, a, k); });
}

/******************************************************************************/

inline List<std::pair<SS, PtrVal>> make_symbolic(SS state, List<PtrVal> args) {
  PtrVal make_loc = args.at(0);
  IntData len = proj_IntV(args.at(1));
  SS res = state;
  //std::cout << "sym array size: " << proj_LocV_size(make_loc) << "\n";
  for (int i = 0; i < len; i++) {
    res = res.update(make_LocV_inc(make_loc, i), make_SymV("x" + std::to_string(var_name++), 8));
  }
  return List<std::pair<SS, PtrVal>>{{res, make_IntV(0)}};
}

inline std::monostate make_symbolic(SS state, List<PtrVal> args, Cont k) {
  PtrVal make_loc = args.at(0);
  IntData len = proj_IntV(args.at(1));
  SS res = state;
  //std::cout << "sym array size: " << proj_LocV_size(make_loc) << "\n";
  for (int i = 0; i < len; i++) {
    res = res.update(make_LocV_inc(make_loc, i), make_SymV("x" + std::to_string(var_name++), 8));
  }
  return k(res, make_IntV(0));
}

/******************************************************************************/

inline List<std::pair<SS, PtrVal>> __assert_fail(SS state, List<PtrVal> args) {
  // TODO get real argument string
  // std::cout << "Fail: Calling to __assert_fail" << std::endl;
  return List<std::pair<SS, PtrVal>>{{state, make_IntV(0)}};
}

inline std::monostate __assert_fail(SS state, List<PtrVal> args, Cont k) {
  // TODO get real argument string
  // std::cout << "Fail: Calling to __assert_fail" << std::endl;
  return k(state, make_IntV(0));
}

#endif
