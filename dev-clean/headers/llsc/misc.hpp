#ifndef LLSC_END_HEADERS
#define LLSC_END_HEADERS

inline void prelude(int argc, char** argv) {
  std::cout << "argc: " << argc <<std::endl;
  for (int i=0;i<argc;i++) {
    std::cout << argv[i] << std::endl;
  }
  inc_stack(STACKSIZE_128MB);
  init_rand();
  handle_cli_args(argc, argv);
#ifdef Z3
  cz3.init_solvers();
#endif
  cov().start_monitor();
}

inline void epilogue() {
#ifdef USE_TP
  tp.wait_for_tasks();
#endif
  cov().stop_monitor();
  cov().print_all(true);
}

#endif
