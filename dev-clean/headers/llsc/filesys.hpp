#ifndef LLSC_FS_HEADERS
#define LLSC_FS_HEADERS

inline unsigned int fs_var_name = 0;
inline int default_sym_file_size = 5;
inline const int stat_size = 144;

inline PtrVal make_SymV_fs(int bw = 8) {
  return make_SymV("fs_x" + std::to_string(fs_var_name++), bw);
}

/* TODO: generate this function and other utilties <2022-05-08, David Deng> */
inline List<PtrVal> fresh_sym_stat() {
  TrList<PtrVal> stat;
  for (int i = 0; i < stat_size; ++i) {
    stat.push_back(make_SymV(fresh("fs_x"), 8));
  }
  return stat.persistent();
}

struct File: public Printable {
  String name;
  List<PtrVal> content;
  List<PtrVal> stat;
  // use transient? Need mutable map support in front end.
  immer::map<String, Ptr<File>> children;
  Ptr<File> parent;

  String toString() const override {
    std::ostringstream ss;
    ss << "File(name=" << name << ", content=[";
    for (auto ptrval: content) {
      ss << ptrval_to_string(ptrval) << ", ";
    }
    ss << "], stat=[";
    for (auto ptrval: stat) {
      /* ss << ptrval_to_string(ptrval) << ", "; */
    }
    ss << "], nchildren=" << children.size();
    ss << ", children=[";
    for (auto &p: children) {
      ss << p.first << ", ";
    }
    ss << "])";
    return ss.str();
  }
  /* NOTE: should only manipulate File objects through pointers <2022-07-11, David Deng> */
  [[nodiscard]] inline static Ptr<File> create(String name) {
    return Ptr<File>(new File(name));
  }
  [[nodiscard]] inline static Ptr<File> create(String name, List<PtrVal> content) {
    return Ptr<File>(new File(name, content));
  }
  [[nodiscard]] inline static Ptr<File> create(String name, List<PtrVal> content, List<PtrVal> stat) {
    return Ptr<File>(new File(name, content, stat));
  }
  /* NOTE: parent and children will not be copied <2022-07-11, David Deng> */
  /* Q: usage? <2022-07-11, David Deng> */
  [[nodiscard]] inline static Ptr<File> shallow_copy(Ptr<File> f) {
    return Ptr<File>(new File(f->name, f->content, f->stat));
  }
  [[nodiscard]] inline static Ptr<File> deep_copy(Ptr<File> f) {
    auto f2 = Ptr<File>(new File(*f));
    f2->children = immer::map<String, Ptr<File>>();
    /* TODO: use transient <2022-07-11, David Deng> */
    /* immer::map_transient<String, Ptr<File>> children; */
    for (auto &p: f->children) {
      auto child = deep_copy(p.second);
      child->parent = f2;
      f2->children = f2->children.set(p.first, child);
      /* children.set(p.first, child); */
    }
    /* f2->children = children.persistent(); */
    return f2;
  }
private:
  File(String name): name(name), content(), stat(stat_size) {}
  File(String name, List<PtrVal> content): name(name), content(content), stat(stat_size) {}
  File(String name, List<PtrVal> content, List<PtrVal> stat): name(name), content(content), stat(stat) {}
  File(const File& f) = default;
};

// return a symbolic file with size bytes
/* TODO: add a global fileId counter, and a map from fileId to file instance
 * Purpose 1: For supporting directory structure
 * Purpose 2: To avoid potentially conflicting var names in sym values
 * <2022-02-07, David Deng> */
inline Ptr<File> make_SymFile(String name, size_t size) {
  TrList<PtrVal> content;
  for (int i = 0; i < size; i++) {
    content.push_back(make_SymV_fs());
  }
  auto stat = fresh_sym_stat();
  return File::create(name, content.persistent(), stat);
};

/* TODO: model the lowest file descriptor guarantee? */

// An opened file
struct Stream: public Printable {
  Ptr<File> file;
  int mode; // a combination of O_RDONLY, O_WRONLY, O_RDWR, etc.
  off_t cursor;

  String toString() const override {
    std::ostringstream ss;
    ss << "Stream(file=" << *file << ", mode=" << mode << ", cursor=" << cursor << ")";
    return ss.str();
  }

  /* NOTE: should only manipulate Stream objects through pointers <2022-07-11, David Deng> */
  [[nodiscard]] inline static Ptr<Stream> create(Ptr<File> file) {
    return Ptr<Stream>(new Stream(file));
  }
  [[nodiscard]] inline static Ptr<Stream> create(Ptr<File> file, int mode) {
    return Ptr<Stream>(new Stream(file, mode));
  }
  [[nodiscard]] inline static Ptr<Stream> create(Ptr<File> file, int mode, size_t cursor) {
    return Ptr<Stream>(new Stream(file, mode, cursor));
  }
  // a shallow copy, only copy mode and cursor, but sharing the same underlying file
  [[nodiscard]] inline static Ptr<Stream> shallow_copy(Ptr<Stream> s) {
    return Ptr<Stream>(new Stream(s->file, s->mode, s->cursor));
  }

private:
  Stream(Ptr<File> file): file(file), mode(O_RDONLY), cursor(0) {}
  Stream(Ptr<File> file, int mode): file(file), mode(mode), cursor(0) {}
  Stream(Ptr<File> file, int mode, size_t cursor): file(file), mode(mode), cursor(cursor) {}
  Stream(const Stream &s) = default;
};

struct FS: public Printable {
  immer::map<Fd, Ptr<Stream>> opened_files;
  /* TODO: implement directory structure
   * 1. change the string key to a fileId, similar to inode number
   * 2. add a root directory file, with fileId=0
   * <2022-02-08, David Deng> */
  Ptr<File> root_file;
  /* immer::map<String, Ptr<File>> files; */
  Fd next_fd;

  Fd get_fresh_fd() {
    /* TODO: traverse through opened files to find the lowest available fd <2022-01-25, David Deng> */
    return next_fd++;
  }
  String toString() const override {
    std::ostringstream ss;
    ss << "FS(nstreams=" << opened_files.size();
    ss << ", root_file=" << *root_file;
    ss << ", opened_files=[";
    for (auto pf: opened_files) {
      ss << pf.second << ", ";
    }
    ss << "])";
    return ss.str();
  }
  FS() : next_fd(3), root_file(File::create("/")) {
    // default initialize opened_files and files
    /* TODO: set up stdin and stdout using fd 1 and 2 <2021-11-03, David Deng> */
  }
  FS(const FS &fs) = default;
  FS(immer::map<Fd, Ptr<Stream>> opened_files, Ptr<File> root_file) :
    opened_files(opened_files), root_file(root_file), next_fd(3) {}
};

inline FS initial_fs;

#endif
