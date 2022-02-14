#include <iostream>
#include <assert.h>
#include "../llsc.hpp"

int main() {
  auto result = match_arg("abc#5def");
  ASSERT((*result == ConcSeg("abc", new SymSeg(5, new ConcSeg("def")))), 
        "sym segment in between conc segments");
}
