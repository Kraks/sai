#ifndef LLSC_ARGS_HEADERS
#define LLSC_ARGS_HEADERS

inline unsigned int args_var_name = 0;
inline PtrVal make_SymV_args(int bw = 8) {
  return make_SymV("args_x" + std::to_string(fs_var_name++), bw);
}
inline immer::flex_vector<immer::flex_vector<PtrVal>> cli_argv;
// pass to llsc_main
inline PtrVal g_argv;
inline PtrVal g_argc;

// for testing and storing intermediate parsing result.
class ArgSeg {
  public:
    immer::flex_vector<PtrVal> to_flex_vector() const {
      if (next_segment == nullptr) {
        return _to_flex_vector();
      } else {
        return _to_flex_vector() + next_segment->to_flex_vector();
      }
    }
    bool operator==(const ArgSeg& other) const {
      return typeid(*this) == typeid(other) && equal(other) && (
          (other.next_segment == nullptr && 
           next_segment == nullptr) ||
          *next_segment == *(other.next_segment)
          );
    };
    ArgSeg *set_next(ArgSeg *next) {
      if (next_segment != nullptr) {
        delete next_segment;
      }
      next_segment = next;
      return next_segment;
    }
    virtual immer::flex_vector<PtrVal> _to_flex_vector() const = 0;
    virtual std::string toString() const = 0;
    virtual bool equal(const ArgSeg&) const = 0;
    friend std::ostream& operator<<(std::ostream& os, const ArgSeg& a) {
      os << a.toString();
      if (a.next_segment != nullptr) {
        os << " -> ";
        os << *a.next_segment;
      }
      return os;
    }
    ArgSeg(ArgSeg* next): next_segment(next) {}
    virtual ~ArgSeg() {
      if (next_segment != nullptr) {
        delete next_segment;
      }
    }
    ArgSeg *next_segment;
};

class ConcSeg: public ArgSeg {
  public:
    ConcSeg (const std::string &content, ArgSeg* next = nullptr): content(content), ArgSeg(next) {};
    std::string toString() const override {
      return std::string("[Conc: ") + content + "]";
    }
    immer::flex_vector<PtrVal> _to_flex_vector() const override {
      immer::flex_vector<PtrVal> vec;
      for (auto c: content) {
        vec = vec.push_back(make_IntV(c, 8));
      }
      return vec;
    };
    bool equal(const ArgSeg& other) const override {
      return static_cast<const ConcSeg&>(other).content == content;
    }
    ~ConcSeg() {
#ifdef DEBUG
      std::cout << "~ConcSeg() called" << std::endl;
#endif
    }
  private:
    std::string content;
};

class SymSeg: public ArgSeg {
  public:
    SymSeg (unsigned length, ArgSeg* next = nullptr): length(length), ArgSeg(next) {};
    std::string toString() const override {
      return std::string("[Sym: ") + std::to_string(length) + "]";
    }
    immer::flex_vector<PtrVal> _to_flex_vector() const override {
      immer::flex_vector<PtrVal> vec;
      for (unsigned i = 0; i < length; ++i) {
        vec = vec.push_back(make_SymV_args());
      }
      return vec;
    };
    bool equal(const ArgSeg& other) const override {
      return static_cast<const SymSeg&>(other).length == length;
    }
    ~SymSeg() {
#ifdef DEBUG
      std::cout << "~SymSeg() called" << std::endl;
#endif
    }
  private:
    unsigned length;
};

/* int main() { */
/*   auto arg1 = ConcSeg("hello", new ConcSeg("second", new SymSeg(43))); */
/*   auto arg2 = ConcSeg("hello", new ConcSeg("second", new SymSeg(43))); */ 
/*   auto arg3 = ConcSeg("hello", new ConcSeg("third", new SymSeg(43))); */ 
/*   std::cout << "ArgSeg == arg2: " << (arg1 == arg2) << std::endl; */
/*   std::cout << "ArgSeg == arg2: " << (arg1 == arg3) << std::endl; */
/*   std::cout << "arg1: " << arg1 << std::endl; */
/*   std::cout << "arg2: " << arg2 << std::endl; */
/*   std::cout << "arg3: " << arg3 << std::endl; */
/* } */

inline std::string escape_concrete(const std::string &raw) {
   auto content = raw;
   content = std::regex_replace(content, std::regex("#!"), "#");
   content = std::regex_replace(content, std::regex("!!"), "!");
   return content;
}

inline std::shared_ptr<ArgSeg> match_arg(std::string argstring) {
  // the regex matching function
  std::smatch sm;
  std::string symarg (R"(#\{?([[:d:]]+)\}?)");
  std::regex re(symarg);

  std::regex_token_iterator<std::string::iterator> rend;
  std::regex_token_iterator<std::string::iterator> sym_lengths ( argstring.begin(), argstring.end(), re, 1 );

  std::regex_token_iterator<std::string::iterator> conc_contents ( argstring.begin(), argstring.end(), re, -1 );

  std::string conc_content; // store the concrete content
  int sym_length; // store the symbolic length


  /*
   * input            conc_contents       | sym_contents
   * abc    -->       "abc"               | _
   * #13    -->       ""                  | 13
   * #13#26 -->       "" ""               | 13 26
   * #13abc#26 -->    "" "abc"            | 13 26
   * abc#13 -->       "abc"               | 13
   * #13abc -->       "" "abc"            | 13
   * abc#13def -->    "abc" "def"         | 13
   */
  
  ArgSeg *node, *head;
  ConcSeg dummy(""); // first dummy node
  head = node = &dummy;
  while (conc_contents!=rend) {
    conc_content = escape_concrete(conc_contents->str());
    if (!conc_content.empty()) {
      node = node->set_next(new ConcSeg(conc_content));
    }
    conc_contents++;
    if (sym_lengths != rend) {
      /* TODO: set a bound on sym_length <2022-02-14, David Deng> */
      sym_length = stoi(sym_lengths->str());
      node = node->set_next(new SymSeg(sym_length));
      sym_lengths++;
    }
  }
  std::shared_ptr<ArgSeg> result(head->next_segment);
  head->next_segment = nullptr; // prevent double free
  return result;
}

inline immer::flex_vector<immer::flex_vector<PtrVal>> parse_args(std::string argstrings) {
  // split spaces
  std::stringstream ss(argstrings); 
  std::string s;
  immer::flex_vector<immer::flex_vector<PtrVal>> result;
  while (std::getline(ss, s, ' ')) { 
    if (s.empty()) {
      /* std::cout << "space matched. Skipping" << std::endl; */
      continue;
    }
    result = result.push_back(match_arg(s)->to_flex_vector().push_back(make_IntV(0, 8)));
  } 
  return result;
  /* return immer::flex_vector<immer::flex_vector<PtrVal>>{ */
  /*   immer::flex_vector{make_IntV('a', 8), make_IntV('b', 8), make_IntV(0, 8)}, */
  /*   immer::flex_vector{make_IntV('c', 8), make_IntV('d', 8), make_IntV(0, 8)}, */
  /* }; */
}



#endif
