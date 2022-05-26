#ifndef LLSC_FS_HEADERS
#define LLSC_FS_HEADERS

inline unsigned int fs_var_name = 0;
inline int default_sym_file_size = 5;
inline const int stat_size = 144;
inline PtrVal make_SymV_fs(int bw = 8) {
  return make_SymV("fs_x" + std::to_string(fs_var_name++), bw);
}

/* TODO: generate this function and other utilties <2022-05-08, David Deng> */
inline List<PtrVal> get_sym_stat() {
  immer::flex_vector_transient<PtrVal> stat;
  for (int i = 0; i < stat_size; ++i) {
    stat.push_back(make_SymV(fresh("fs_x"), 8));
  }
  return stat.persistent();
}

struct File: public Printable {
    std::string name;
    List<PtrVal> content;
    List<PtrVal> stat;
    // use transient? Need mutable map support in front end.
    immer::map<std::string, Ptr<File>> children;
    Ptr<File> parent;

    std::string toString() const override {
      std::ostringstream ss;
      ss << "File(name=" << name << ", content=[";
      for (auto ptrval: content) {
        ss << ptrval_to_string(ptrval) << ", ";
      }
      ss << "], stat=[";
      for (auto ptrval: stat) {
        ss << ptrval_to_string(ptrval) << ", ";
      }
      ss << "])";
      return ss.str();
    }
    [[nodiscard]] inline static Ptr<File> create(std::string name) 
    { 
      return Ptr<File>(new File(name));
    }
    [[nodiscard]] inline static Ptr<File> create(std::string name, List<PtrVal> content)
    {
      return Ptr<File>(new File(name, content)); 
    }
    [[nodiscard]] inline static Ptr<File> create(std::string name, List<PtrVal> content, List<PtrVal> stat)
    { 
      return Ptr<File>(new File(name, content, stat)); 
    }
    [[nodiscard]] inline static Ptr<File> create(const File& f)
    { 
      return Ptr<File>(new File(f)); 
    }
  private:
    File(std::string name): 
      name(name), content(), stat(stat_size) {}
    File(std::string name, List<PtrVal> content): 
      name(name), content(content), stat(stat_size) {}
    File(std::string name, List<PtrVal> content, List<PtrVal> stat): 
      name(name), content(content), stat(stat) {}
    File(const File& f): name(f.name), content(f.content), stat(f.stat) {}
};

// return a symbolic file with size bytes
/* TODO: add a global fileId counter, and a map from fileId to file instance
 * Purpose 1: For supporting directory structure
 * Purpose 2: To avoid potentially conflicting var names in sym values
 * <2022-02-07, David Deng> */
inline Ptr<File> make_SymFile(std::string name, size_t size) {
  List<PtrVal> content;
  for (int i = 0; i < size; i++) {
    content = content.push_back(make_SymV_fs());
  }
  auto stat = get_sym_stat();
  return File::create(name, content, stat);
};

/* TODO: what is the rule about the lowest file descriptor guarantee?
 * How do we model that rule? Is there a usecase for that?
 * Use a particular data structure? <2021-10-12, David Deng> */

// An opened file
struct Stream: public Printable {
    Ptr<File> file;
    int mode; // a combination of O_RDONLY, O_WRONLY, O_RDWR, etc.
    off_t cursor;

    std::string toString() const override {
      std::ostringstream ss;
      ss << "Stream(file=" << *file << ", mode=" << mode << ", cursor=" << cursor << ")";
      return ss.str();
    }
    Stream(const Stream &s): file(s.file), mode(s.mode), cursor(s.cursor) {}
    Stream(Ptr<File> file): file(file), mode(O_RDONLY), cursor(0) {}
    Stream(Ptr<File> file, int mode): file(file), mode(mode), cursor(0) {}
    Stream(Ptr<File> file, int mode, size_t cursor): file(file), mode(mode), cursor(cursor) {}

};

struct FS: public Printable {
    immer::map<Fd, Stream> opened_files;
    /* TODO: implement directory structure
     * 1. change the string key to a fileId, similar to inode number
     * 2. add a root directory file, with fileId=0
     * <2022-02-08, David Deng> */
    Ptr<File> root_file;
    /* immer::map<std::string, Ptr<File>> files; */
    Fd next_fd;

    Fd get_fresh_fd() {
      /* TODO: traverse through opened files to find the lowest available fd <2022-01-25, David Deng> */
      return next_fd++;
    }
    std::string toString() const override {
      std::ostringstream ss;
      ss 
        << "FS("
        << "nstreams=" << opened_files.size();
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

    FS(const FS &fs) : root_file(fs.root_file), opened_files(fs.opened_files), next_fd(3) {}

    FS(immer::map<Fd, Stream> opened_files, Ptr<File> root_file, status_t status, Fd next_fd, Fd last_opened_fd) :
      opened_files(opened_files), root_file(root_file), next_fd(next_fd) {}
};

inline FS initial_fs;

#endif
