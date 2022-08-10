#ifndef LLSC_MON_HEADERS
#define LLSC_MON_HEADERS
#include<signal.h>

/* Coverage information */

// TODO: branch coverage
// Some note on overhead: recording coverage 1m path/block exec poses ~2.5sec overhead.
struct Monitor {
  private:
    using BlockId = uint64_t;
    using BranchId = uint64_t;
    // Total number of blocks
    uint64_t num_blocks;
    // The number of execution for each block
    std::vector<std::atomic_uint64_t> block_cov;
    // The number of execution for each branch
    std::map<BlockId, std::map<BranchId, std::atomic_uint64_t>> branch_cov;
    // Number of discovered paths
    std::atomic_uint64_t num_paths;
    // Number of executed instructions
    std::atomic_uint64_t num_insts;
    // Starting time
    steady_clock::time_point start, stop;
    std::thread watcher;
    std::promise<void> signal_exit;

  public:
    Monitor() : num_blocks(0), num_paths(0), start(steady_clock::now()) {}
    Monitor(uint64_t num_blocks, std::vector<std::pair<unsigned, unsigned>> branch_num) :
      num_blocks(num_blocks), num_paths(0),
      block_cov(num_blocks),
      start(steady_clock::now()) {
      // `branch_num` contains the ids of blocks whose terminator is br/switch,
      // for each of such block, `br_arity` is the number of branches.
      for (const auto& [blk_id, br_arity] : branch_num) {
        branch_cov[blk_id] = std::map<BranchId, std::atomic_uint64_t>();
        ASSERT(br_arity > 0, "Wrong number of branches");
        for (auto i = 0; i < br_arity; i++) {
          branch_cov[blk_id][i] = 0;
        }
      }
    }

    void inc_block(BlockId b) {
      block_cov[b]++;
    }
    void inc_branch(BlockId b, BranchId x) {
      branch_cov[b][x]++;
    }
    void inc_path(size_t n) {
      num_paths += n;
    }
    void inc_inst(size_t n) {
      num_insts += n;
    }
    void print_inst_stat() {
      std::cout << "#insts: " << num_insts << "; " << std::flush;
    }
    void print_path_cov() {
      std::cout << "#paths: " << num_paths << "; " << std::flush;
    }
    void print_block_cov() {
      size_t covered = 0;
      for (auto& v : block_cov) { if (v != 0) covered++; }
      std::cout << "#blocks: "
                << covered << "/"
                << num_blocks << "; "
                << std::flush;
    }
    void print_block_cov_detail() {
      print_block_cov();
      for (int i = 0; i < block_cov.size(); i++) {
        std::cout << "Block: " << i << "; "
                  << "visited: " << block_cov[i] << "\n"
                  << std::flush;
      }
    }
    void print_async() {
      std::cout << "#threads: " << n_thread << "; #task-in-q: " << tp.tasks_num_queued() << "; " << std::flush;
    }
    void print_query_stat() {
      std::cout << "#queries: " << br_query_num << "/" << test_query_num << " (" << cached_query_num << ")\n" << std::flush;
    }
    void print_time(bool done) {
      steady_clock::time_point now = done ? stop : steady_clock::now();
      std::cout << "[" << (ext_solver_time / 1.0e6) << "s/"
		<< (int_solver_time / 1.0e6) << "s/"
                << (duration_cast<microseconds>(now - start).count() / 1.0e6) << "s] ";
    }
    void print_all(bool done = false) {
      print_time(done);
      if (print_inst_cnt) print_inst_stat();
      print_block_cov();
      print_path_cov();
      print_async();
      print_query_stat();
    }
    void start_monitor() {
      std::future<void> future = signal_exit.get_future();
      watcher = std::thread([this](std::future<void> fut) {
        while (fut.wait_for(milliseconds(1)) == std::future_status::timeout) {
          steady_clock::time_point now = steady_clock::now();
          if (duration_cast<seconds>(now - start) > seconds(timeout)) {
            std::cout << "Timeout, aborting.\n";
            print_all();
            _exit(0);
            // Note: Directly exit may cause other threads in a random state.
            // When using the thread pool, we could use the following to wait
            // all other worker threads to finish:
            // tp.stop_all_tasks(); break;
          }
          print_all();
          std::this_thread::sleep_for(seconds(1));
        }
      }, std::move(future));
    }
    void stop_monitor() {
      stop = steady_clock::now();
      signal_exit.set_value();
      if (watcher.joinable()) {
        // XXX: this is still not idea, since for execution < 1s, we need to wait for watcher to join...
        watcher.join();
      }
    }
};

/* Declare the function to get monitor; will be emited by the front-end in common.h */

inline Monitor& cov();

#endif
