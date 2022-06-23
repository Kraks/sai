#ifndef LLSC_SMT_CHECKER_HEADERS
#define LLSC_SMT_CHECKER_HEADERS

// TODO: generic caching mechanisms should be shared no matter the solver
class Checker {
public:
  virtual ~Checker() {}

  enum solver_result {
    unsat, sat, unknown
  };
  static std::string check_result_to_string(solver_result res) {
    switch (res) {
      case sat: return "sat";
      case unsat: return "unsat";
      case unknown: return "unknown";
      default: ABORT("wow");
    }
  }

  virtual bool check_pc(PC pc) = 0;
  virtual std::pair<bool, UIntData> get_sat_value(PC pc, PtrVal v) = 0;
  virtual void generate_test(PC pc) = 0;
};

template <typename Self, typename Expr>
class CachedChecker : public Checker {
  Self* self() {
    return static_cast<Self*>(this);
  }

public:
  using VarMap = std::map<std::shared_ptr<SymV>, Expr>;
  using ExprDetail = std::tuple<Expr, std::shared_ptr<VarMap>>;
  std::map<PtrVal, ExprDetail> objcache;

  using Model = std::map<std::shared_ptr<SymV>, IntData>;
  using CheckResult = std::tuple<solver_result, std::shared_ptr<Model>>;
  std::map<std::set<PtrVal>, CheckResult> cexcache;

  void clear_cache() {
    objcache.clear();
    cexcache.clear();
  }

  ExprDetail construct_expr(PtrVal e) {
    if (use_objcache)
      if (auto it = objcache.find(e); it != objcache.end())
        return it->second;
    auto varmap = std::make_shared<VarMap>();
    auto expr = self()->construct_expr_internal(e, *varmap);
    if (use_objcache)
      objcache.emplace(e, std::make_tuple(expr, varmap));
    return std::make_tuple(expr, varmap);
  }

  template <template <typename> typename Cont>
  CheckResult check_model(
        const Cont<PtrVal>& conds,
        std::shared_ptr<SymV> query_expr=nullptr,
        bool require_model=false) {

    self()->push_internal();
    // translation
    std::map<PtrVal, ExprDetail> exprmap;
    for (auto &e: conds) {
      exprmap.emplace(e, construct_expr(e));
    }
    if (query_expr) {
      exprmap.emplace(query_expr, construct_expr(query_expr));
    }

    // constraint independence resolving
    std::set<PtrVal> conds2;
    if (use_cons_indep && (query_expr || conds.size() > 1)) {
      // std::map<PtrVal, std::set<PtrVal>> v2q, q2v;
      // std::queue<PtrVal> queue;
      // for (auto [v, ev]: exprmap)
      // for (auto &e: pc) {
      //   std::set<PtrVal> vars;
      //   auto q = construct_STP_expr(e, vars);
      //   if (e == last)
      //     queue.push(q);
      //   for (auto &v: vars)
      //     v2q[v].insert(q);
      //   q2v[q] = std::move(vars);
      // }
      // while (!queue.empty()) {
      //   auto q = queue.front(); queue.pop();
      //   auto &vars = q2v[q];
      //   if (!vars.empty()) {
      //     pc2.insert(q);
      //     variables.insert(vars.begin(), vars.end());
      //     for (auto &v: vars) {
      //       for (auto &q2: v2q[v])
      //         if (q2 != q)
      //           queue.push(q2);
      //       v2q[v].clear();
      //     }
      //     vars.clear();
      //   }
      // }
    } else {
      for (auto &e: conds)
        conds2.insert(e);
    }

    //solving with counterexample caching
    if (use_cexcache && (!query_expr || query_expr->name.size())) {
      if (auto it = cexcache.find(conds2); it != cexcache.end()) {
        self()->pop_internal();
        return it->second;
      }
    }

    //assert and check
    VarMap varmap;
    for (auto &v: conds2) {
      auto& [e, vm] = exprmap.at(v);
      self()->add_constraint_internal(e);
      varmap.insert(vm->begin(), vm->end());
    }
    solver_result result = self()->check_model_internal();

    //get model
    std::shared_ptr<Model> model;
    if (result == sat && (use_cexcache || require_model)) {
      model = std::make_shared<Model>();
      for (auto [v, e]: varmap) {
        model->emplace(v, self()->get_value_internal(e));
      }
    }
    if (use_cexcache) {
      cexcache.emplace(conds2, std::make_tuple(result, model));
    }
    if (query_expr) {
      model = std::make_shared<Model>();
      model->emplace(query_expr, self()->get_value_internal(std::get<Expr>(exprmap.at(query_expr))));
    }
    self()->pop_internal();
    return std::make_tuple(result, model);
  }

  // interfaces
  
  virtual bool check_pc(PC pc) override {
    if (!use_solver) return true;
    br_query_num++;
    auto [r, m] = check_model(pc.get_path_conds());
    return r == sat;
  }

  virtual std::pair<bool, UIntData> get_sat_value(PC pc, PtrVal v) override {
    auto v2 = std::dynamic_pointer_cast<SymV>(v);
    auto [r, m] = check_model(pc.get_path_conds(), v2);
    return std::make_pair(r == sat, r == sat ? m->at(v2) : 0);
  }

  virtual void generate_test(PC pc) override {
    if (!use_solver) return;
    if (mkdir("tests", 0777) == -1) {
      if (errno == EEXIST) { }
      else ABORT("Cannot create the folder tests, abort.\n");
    }
    std::stringstream output;
    output << "Query number: " << (test_query_num+1) << std::endl;
    auto [result, model] = check_model(pc.get_path_conds(), nullptr, true);
    output << "Query is " << check_result_to_string(result) << std::endl;
    if (result == sat) {
      test_query_num++;
      std::stringstream filename;
      filename << "tests/" << test_query_num << ".test";
      int out_fd = open(filename.str().c_str(), O_RDWR | O_CREAT, 0777);
      if (out_fd == -1) {
        ABORT("Cannot create the test case file, abort.\n");
      }
      for (auto [k, v]: *model) {
        output << k->name << " == " << v << std::endl;
      }
      int n = write(out_fd, output.str().c_str(), output.str().size());
      close(out_fd);
    }
  }
};

#include "smt_stp.hpp"
#include "smt_z3.hpp"

class CheckerManager {
public:
  std::map<std::thread::id, std::shared_ptr<Checker>> checker_map;

  void init_checkers() {
    auto fun = [this](auto id) {
      if (solver_kind == SolverKind::z3) {
        checker_map[id] = std::make_shared<CheckerZ3>();
      }
      else if (solver_kind == SolverKind::stp) {
        checker_map[id] = std::make_shared<CheckerSTP>();
      }
      else {
        ABORT("unknown solver");
      }
    };
    fun(std::this_thread::get_id());
    tp.with_thread_ids(fun);
  }

  Checker& get_checker() {
    return *(checker_map[std::this_thread::get_id()]);
  }
};

inline CheckerManager checker_manager;

// To be compatible with generated code:

inline void init_solvers() { checker_manager.init_checkers(); }
inline bool check_pc(PC pc) { return checker_manager.get_checker().check_pc(std::move(pc)); }
inline void check_pc_to_file(SS state) { checker_manager.get_checker().generate_test(std::move(state.get_PC())); }
inline std::pair<bool, UIntData> get_sat_value(PC pc, PtrVal v) { return checker_manager.get_checker().get_sat_value(std::move(pc), v); }

#endif
