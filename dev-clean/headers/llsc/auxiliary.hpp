#ifndef LLSC_AUX_HEADERS
#define LLSC_AUX_HEADERS

using BlockLabel = int;
using Id = int;
using Addr = unsigned int;
using IntData = long long int;
using Fd = int;
using status_t = unsigned short;

inline unsigned int bitwidth = 32;
inline unsigned int addr_bw = 64;
inline unsigned int var_name = 0;

// TODO: refactor those counters into Monitor
inline std::atomic<unsigned int> num_async = 0;
inline std::atomic<unsigned int> tt_num_async = 0;

inline unsigned int test_query_num = 0;
inline unsigned int br_query_num = 0;
inline unsigned int cached_query_num = 0;

inline duration<double, std::micro> solver_time = microseconds::zero();

enum iOP {
  op_add, op_sub, op_mul, op_sdiv, op_udiv,
  op_eq, op_uge, op_ugt, op_ule, op_ult,
  op_sge, op_sgt, op_sle, op_slt, op_neq,
  op_shl, op_lshr, op_ashr, op_and, op_or, op_xor,
  op_urem, op_srem, op_neg, op_sext, op_trunc
};

enum fOP {
  op_fadd, op_fsub, op_fmul, op_fdiv
};

inline std::string int_op2string(iOP op) {
  switch (op) {
    case op_add: return "+";
    case op_sub: return "-";
    case op_mul: return "*";
    case op_sdiv: return "s/";
    case op_udiv: return "u/";
    case op_eq:  return "=";
    case op_uge: return "u>=";
    case op_ugt: return "u>";
    case op_ule: return "u<=";
    case op_ult: return "u<";
    case op_sge: return "s>e";
    case op_sgt: return "s>";
    case op_sle: return "s<=";
    case op_slt: return "s<";
    case op_neq: return "!=";
    case op_shl: return "shl";
    case op_lshr: return "lshr";
    case op_ashr: return "ashr";
    case op_and: return "/\\";
    case op_or: return "\\/";
    case op_xor: return "xor";
    case op_urem: return "u%";
    case op_srem: return "s%";
    case op_neg: return "!";
    case op_sext: return "sext";
  }
  return "unknown op";
}

/* Stack manipulation */

#define STACKSIZE_16MB (16 * 1024 * 1024)
#define STACKSIZE_32MB (32 * 1024 * 1024)
#define STACKSIZE_64MB (64 * 1024 * 1024)
#define STACKSIZE_128MB (128 * 1024 * 1024)
#define STACKSIZE_1GB (128 * 1024 * 1024 * 8)

inline void inc_stack(rlim_t lim) {
  struct rlimit rl;
  int result;

  result = getrlimit(RLIMIT_STACK, &rl);
  if (result == 0) {
    if (rl.rlim_cur < lim) {
      rl.rlim_cur = lim;
      result = setrlimit(RLIMIT_STACK, &rl);
      if (result != 0) {
        fprintf(stderr, "setrlimit returned result = %d\n", result);
      }
    }
  }
}

/* hash */
template<typename T>
void hash_combine(size_t& seed, T const& v) {
  seed ^= std::hash<T>{}(v) + 0x9e3779b9 + (seed << 6) + (seed >> 2);
}

#endif