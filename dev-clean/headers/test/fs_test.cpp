#include <iostream>
#include <assert.h>
#include "../llsc.hpp"

int main() {
  PtrVal intV_0 = make_IntV(0);
  PtrVal intV_1 = make_IntV(1);
  PtrVal intV_2 = make_IntV(2);
  PtrVal intV_3 = make_IntV(3);
  PtrVal intV_4 = make_IntV(4);
  PtrVal intV_5 = make_IntV(5);
  PtrVal intV_6 = make_IntV(6);
  PtrVal intV_7 = make_IntV(7);
  PtrVal intV_8 = make_IntV(8);
  PtrVal intV_9 = make_IntV(9);

  {
    // test read_at
    File f = File("A", immer::flex_vector<PtrVal>{intV_0, intV_1, intV_2});
    ASSERT((f.read_at(0, 2) == immer::flex_vector<PtrVal>{intV_0, intV_1}), "read_at");
    ASSERT((f.read_at(1, 4) == immer::flex_vector<PtrVal>{intV_1, intV_2}), "read_at with more bytes");
    ASSERT((f.read_at(0, 0) == immer::flex_vector<PtrVal>{}), "read_at with no bytes");
  }
  {
    // test size
    File f = File("A", immer::flex_vector<PtrVal>{intV_0, intV_1, intV_2});
    ASSERT(f.get_size() == 3, "size of non-empty file");
    ASSERT(File("B").get_size() == 0, "size of an empty file");
  }
  {
    // test make_SymFile
    File f = make_SymFile("A", 5);
    ASSERT(f.get_size() == 5, "make_SymFile returns file of correct size");
    /* std::cout << f << std::endl; */
  }
  {
    // test write_at_no_fill
    File f = File("A", immer::flex_vector<PtrVal>{intV_0, intV_1, intV_2});
    ASSERT((f.write_at_no_fill(immer::flex_vector<PtrVal>{intV_3, intV_4, intV_5}, 3).get_content() ==
          immer::flex_vector<PtrVal>{intV_0, intV_1, intV_2, intV_3, intV_4, intV_5}), 
        "write at the end of a file");

    ASSERT((f.write_at_no_fill(immer::flex_vector<PtrVal>{intV_3, intV_4, intV_5}, 2).get_content() ==
          immer::flex_vector<PtrVal>{intV_0, intV_1, intV_3, intV_4, intV_5}), 
        "write at the middle of a file, exceeding the end");

    ASSERT((f.write_at_no_fill(immer::flex_vector<PtrVal>{intV_4}, 1).get_content() ==
          immer::flex_vector<PtrVal>{intV_0, intV_4, intV_2}), 
        "write at the middle of a file, not exceeding the end");

  }
  {
    File f = File("A", immer::flex_vector<PtrVal>{intV_0, intV_1, intV_2});
    // test write_at
    ASSERT((f.write_at(immer::flex_vector<PtrVal>{intV_4}, 5, intV_0).get_content() ==
          immer::flex_vector<PtrVal>{intV_0, intV_1, intV_2, intV_0, intV_0, intV_4}), 
        "write after the end of the file, a hole should be created");

    ASSERT((f.write_at(immer::flex_vector<PtrVal>{intV_4}, 3, intV_0).get_content() ==
          f.write_at_no_fill(immer::flex_vector<PtrVal>{intV_4}, 3).get_content()),
        "write_at and write_at_no_fill should behave the same when not writing after the end");
  }

}
