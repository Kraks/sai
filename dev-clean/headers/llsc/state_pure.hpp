#ifndef LLSC_STATE_PURE_HEADERS
#define LLSC_STATE_PURE_HEADERS

/* Memory, stack, and symbolic state representation */

// Note (5/17): now using a byte-oriented layout

template <class V, class M>
class PreMem {
  protected:
    immer::flex_vector<V> mem;
  public:
    PreMem(immer::flex_vector<V> mem) : mem(mem) {}
    size_t size() { return mem.size(); }
    V at(size_t idx, int size) { return mem.at(idx); }
    M update(size_t idx, V val) {
      ASSERT(idx < mem.size(), "PreMem update index out of bound");
      return M(mem.set(idx, val));
    }
    M append(V val) { return M(mem.push_back(val)); }
    M append(V val, size_t padding) {
      size_t idx = mem.size();
      return M(alloc(padding + 1).update(idx, val));
    }
    M append(immer::flex_vector<V> vs) { return M(mem + vs); }
    M alloc(size_t size) {
      auto m = mem.transient();
      for (int i = 0; i < size; i++) { m.push_back(nullptr); }
      return M(m.persistent());
    }
    M take(size_t keep) { return M(mem.take(keep)); }
    M drop(size_t d) { return M(mem.drop(d)); }
    immer::flex_vector<V> getMem() { return mem; }
};

class Mem: public PreMem<PtrVal, Mem> {
  class IterVals {
    immer::flex_vector<PtrVal> mem;
    size_t begin0, end0, idx, size;
    bool first;

    std::optional<std::tuple<size_t, PtrVal, int>> get_first() {
      first = false;
      PtrVal ret;
      for (idx = begin0; idx <= begin0 && !(ret = mem.at(idx)); idx--);
      if (ret && idx + (size = ret->get_bw() / 8) > begin0) {
        return std::tuple(idx, ret, size);
      }
      else {
        idx = begin0; size = 0;
        return next();
      }
    }

  public:
    IterVals(immer::flex_vector<PtrVal> m, size_t idx, int size)
      : mem(m), begin0(idx), end0(idx + size), first(true) { }
    
    std::optional<std::tuple<size_t, PtrVal, int>> next() {
      // assumptions:
      //   1. values do not overlap
      //   2. mem is sufficiently long
      if (first) return get_first();
      idx += size;
      while (idx < end0) {
        PtrVal ret = mem.at(idx);
        if (ret) {
          size = ret->get_bw()/8;
          return std::tuple(idx, ret, size);
        }
        else {
          for (size = 1; idx + size < end0 && !mem.at(idx + size); size++);
          return std::tuple(idx, PtrVal(nullptr), size);
        }
      }
      return std::nullopt;
    }
  };

public:
  Mem(immer::flex_vector<PtrVal> mem) : PreMem(mem) { }

  PtrVal at(size_t idx0, int size0) {
    if (size0 == -1) return PreMem::at(idx0, size0);
    IterVals iter(mem, idx0, size0);
    PtrVal val, ret;
    size_t idx; int size;
    // first value
    std::tie(idx, ret, size) = *(iter.next());
    if (idx == idx0) {
      if (size == size0) return ret;
      assert(ret);  // otherwise partially undefined
    }
    else {
      // trunc head: idx < idx0
      ret = trunc(ret, ret->get_bw(), (idx + size - idx0) * 8);
    }
    // append more values
    while (ret->get_bw() < size0 * 8) {
      std::tie(idx, val, size) = *(iter.next());
      assert(val);  // otherwise partially undefined
      // (ret << |val|) | val
      ret = bv_zext(ret, ret->get_bw() + val->get_bw());
      ret = int_op_2(op_shl, ret, make_IntV(val->get_bw(), ret->get_bw()));
      ret = int_op_2(op_or, ret, bv_zext(val, ret->get_bw()));
    }
    // trunc tail if necessary
    if (ret->get_bw() > size0 * 8) {
      int off = ret->get_bw() - size * 8;
      ret = int_op_2(op_lshr, ret, make_IntV(off, ret->get_bw()));
      ret = trunc(ret, ret->get_bw(), size * 8);
    }
    return ret;
  }

  Mem update(size_t idx, PtrVal val) {
    return PreMem::update(idx, val);
  }
};

class Frame {
  public:
    using Env = immer::map<Id, PtrVal>;
  private:
    Env env;
  public:
    Frame(Env env) : env(env) {}
    Frame() : env(immer::map<Id, PtrVal>{}) {}
    size_t size() { return env.size(); }
    PtrVal lookup_id(Id id) const { return env.at(id); }
    Frame assign(Id id, PtrVal v) const { return Frame(env.insert({id, v})); }
    Frame assign_seq(immer::flex_vector<Id> ids, immer::flex_vector<PtrVal> vals) const {
      Env env1 = env;
      for (size_t i = 0; i < ids.size(); i++) {
        env1 = env1.insert({ids.at(i), vals.at(i)});
      }
      return Frame(env1);
    }
};

class Stack {
  private:
    Mem mem;
    immer::flex_vector<Frame> env;
  public:
    Stack(Mem mem, immer::flex_vector<Frame> env) : mem(mem), env(env) {}
    size_t mem_size() { return mem.size(); }
    size_t frame_depth() { return env.size(); }
    PtrVal getVarargLoc() { return env.at(env.size()-2).lookup_id(0); }
    Stack pop(size_t keep) { return Stack(mem.take(keep), env.take(env.size()-1)); }
    Stack push() { return Stack(mem, env.push_back(Frame())); }
    Stack push(Frame f) { return Stack(mem, env.push_back(f)); }

    Stack assign(Id id, PtrVal val) {
      return Stack(mem, env.update(env.size()-1, [&](auto f) { return f.assign(id, val); }));
    }
    Stack assign_seq(immer::flex_vector<Id> ids, immer::flex_vector<PtrVal> vals) {
      // varargs
      size_t id_size = ids.size();
      if (id_size == 0) return Stack(mem, env);
      if (ids.at(id_size - 1) == 0) {
        auto updated_mem = mem;
        for (size_t i = id_size - 1; i < vals.size(); i++) {
          // FIXME: magic value 8, as vararg is retrived from +8 address
          updated_mem = updated_mem.append(vals.at(i), 7);
        }
        if (updated_mem.size() == mem.size()) updated_mem = updated_mem.alloc(8);
        auto updated_vals = vals.take(id_size - 1).push_back(make_LocV(mem.size(), LocV::kStack));
        auto stack = Stack(updated_mem, env.update(env.size()-1, [&](auto f) { return f.assign_seq(ids, updated_vals); }));
        return Stack(updated_mem, env.update(env.size()-1, [&](auto f) { return f.assign_seq(ids, updated_vals); }));
      } else {
        return Stack(mem, env.update(env.size()-1, [&](auto f) { return f.assign_seq(ids, vals); }));
      }
    }
    PtrVal lookup_id(Id id) { return env.back().lookup_id(id); }

    PtrVal at(size_t idx, int size) { return mem.at(idx, size); }
    PtrVal at_struct(size_t idx, int size) {
      return std::make_shared<StructV>(mem.take(idx + size).drop(idx).getMem());
    }
    Stack update(size_t idx, PtrVal val) { return Stack(mem.update(idx, val), env); }
    Stack alloc(size_t size) { return Stack(mem.alloc(size), env); }
};

class PC {
  private:
    immer::flex_vector<PtrVal> pc;
  public:
    PC(immer::flex_vector<PtrVal> pc) : pc(pc) {}
    PC add(PtrVal e) { return PC(pc.push_back(e)); }
    PC add_set(immer::flex_vector<PtrVal> new_pc) { return PC(pc + new_pc); }
    immer::flex_vector<PtrVal> get_path_conds() { return pc; }
    PtrVal get_last_cond() {
      if (pc.size() > 0) return pc.back();
      return nullptr;
    }
    void print() { print_vec(pc); }
};

class SS {
  private:
    Mem heap;
    Stack stack;
    PC pc;
    BlockLabel bb;
    FS fs;
  public:
    SS(Mem heap, Stack stack, PC pc, BlockLabel bb) : heap(heap), stack(stack), pc(pc), bb(bb), fs(initial_fs) {}
    SS(Mem heap, Stack stack, PC pc, BlockLabel bb, FS fs) : heap(heap), stack(stack), pc(pc), bb(bb), fs(fs) {}
    PtrVal env_lookup(Id id) { return stack.lookup_id(id); }
    size_t heap_size() { return heap.size(); }
    size_t stack_size() { return stack.mem_size(); }
    size_t fresh_stack_addr() { return stack_size(); }
    size_t frame_depth() { return frame_depth(); }
    PtrVal at(PtrVal addr, int size = -1) {
      auto loc = std::dynamic_pointer_cast<LocV>(addr);
      ASSERT(loc != nullptr, "Lookup an non-address value");
      if (loc->k == LocV::kStack) return stack.at(loc->l, size);
      return heap.at(loc->l, size);
    }
    PtrVal at_struct(PtrVal addr, int size) {
      auto loc = std::dynamic_pointer_cast<LocV>(addr);
      ASSERT(loc != nullptr, "Lookup an non-address value");
      if (loc->k == LocV::kStack) return stack.at_struct(loc->l, size);
      return std::make_shared<StructV>(heap.take(loc->l + size).drop(loc->l).getMem());
    }
    PtrVal heap_lookup(size_t addr) { return heap.at(addr, -1); }
    BlockLabel incoming_block() { return bb; }
    SS alloc_stack(size_t size) { return SS(heap, stack.alloc(size), pc, bb); }
    SS alloc_heap(size_t size) { return SS(heap.alloc(size), stack, pc, bb); }
    SS update(PtrVal addr, PtrVal val) {
      auto loc = std::dynamic_pointer_cast<LocV>(addr);
      ASSERT(loc != nullptr, "Lookup an non-address value");
      if (loc->k == LocV::kStack) return SS(heap, stack.update(loc->l, val), pc, bb);
      return SS(heap.update(loc->l, val), stack, pc, bb);
    }
    SS push() { return SS(heap, stack.push(), pc, bb); }
    SS pop(size_t keep) { return SS(heap, stack.pop(keep), pc, bb); }
    SS assign(Id id, PtrVal val) { return SS(heap, stack.assign(id, val), pc, bb); }
    SS assign_seq(immer::flex_vector<Id> ids, immer::flex_vector<PtrVal> vals) {
      return SS(heap, stack.assign_seq(ids, vals), pc, bb);
    }
    SS heap_append(immer::flex_vector<PtrVal> vals) {
      return SS(heap.append(vals), stack, pc, bb);
    }
    SS add_PC(PtrVal e) { return SS(heap, stack, pc.add(e), bb); }
    SS add_PC_set(immer::flex_vector<PtrVal> s) { return SS(heap, stack, pc.add_set(s), bb); }
    SS add_incoming_block(BlockLabel blabel) { return SS(heap, stack, pc, blabel); }
    SS init_arg(int len) {
      ASSERT(stack.mem_size() == 0, "Stack Not New");
      // FIXME: ptr size magic
      auto res_stack = stack.alloc(17 + len + 1);
      res_stack = res_stack.update(0, make_LocV(16, LocV::kStack));
      res_stack = res_stack.update(8, make_LocV(17, LocV::kStack));
      res_stack = res_stack.update(16, make_IntV(0));
      int arg_index = 17;
      for (int i = 0; i < len; i++) {
        res_stack = res_stack.update(arg_index, make_SymV("ARG" + std::to_string(i)));
        arg_index++;
      }
      res_stack = res_stack.update(arg_index, make_IntV(0));
      return SS(heap, res_stack, pc, bb);
    }
    PC get_PC() { return pc; }
    // TODO temp solution
    PtrVal getVarargLoc() { return stack.getVarargLoc(); }
    void set_fs(FS new_fs) { fs = new_fs; }
    FS get_fs() { return fs; }
};

inline const Mem mt_mem = Mem(immer::flex_vector<PtrVal>{});
inline const Stack mt_stack = Stack(mt_mem, immer::flex_vector<Frame>{});
inline const PC mt_pc = PC(immer::flex_vector<PtrVal>{});
inline const BlockLabel mt_bb = 0;
inline const SS mt_ss = SS(mt_mem, mt_stack, mt_pc, mt_bb);

inline const immer::flex_vector<std::pair<SS, PtrVal>> mt_path_result =
  immer::flex_vector<std::pair<SS, PtrVal>>{};

using func_t = immer::flex_vector<std::pair<SS, PtrVal>> (*)(SS, immer::flex_vector<PtrVal>);

inline PtrVal make_FunV(func_t f) {
  return std::make_shared<FunV<func_t>>(f);
}

inline immer::flex_vector<std::pair<SS, PtrVal>> direct_apply(PtrVal v, SS ss, immer::flex_vector<PtrVal> args) {
  auto f = std::dynamic_pointer_cast<FunV<func_t>>(v);
  if (f) return f->f(ss, args);
  ABORT("direct_apply: not applicable");
}

using func_cps_t = std::monostate (*)(SS, immer::flex_vector<PtrVal>, std::function<std::monostate(SS, PtrVal)>);

inline PtrVal make_CPSFunV(func_cps_t f) {
  return std::make_shared<CPSFunV<func_cps_t>>(f);
}

inline std::monostate cps_apply(PtrVal v, SS ss, immer::flex_vector<PtrVal> args, std::function<std::monostate(SS, PtrVal)> k) {
  auto f = std::dynamic_pointer_cast<CPSFunV<func_cps_t>>(v);
  if (f) return f->f(ss, args, k);
  ABORT("cps_apply: not applicable");
}

#endif
