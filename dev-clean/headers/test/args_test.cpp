#include <iostream>
#include <assert.h>
#include "../llsc.hpp"

int main() {
  std::shared_ptr<ArgSeg> result;

  result = match_arg("abc#5def");
  ASSERT((*result == ConcSeg("abc", new SymSeg(5, new ConcSeg("def")))), 
        "no braces");

  /* std::cout << *result << std::endl; */
  /* result: [Conc: abc] -> [Sym: 5] -> [Conc: def] */

  result = match_arg("#{5}");
  ASSERT((*result == SymSeg(5)), 
        "sym");

  result = match_arg("#{5}def");
  ASSERT((*result == SymSeg(5, new ConcSeg("def"))), 
        "sym + conc");

  result = match_arg("abc#{5}");
  ASSERT((*result == ConcSeg("abc", new SymSeg(5))), 
        "conc + sym");

  result = match_arg("abc#{5}def");
  ASSERT((*result == ConcSeg("abc", new SymSeg(5, new ConcSeg("def")))), 
        "conc + sym + conc");

  result = match_arg("#{5}abc#{13}");
  ASSERT((*result == SymSeg(5, new ConcSeg("abc", new SymSeg(13)))),
        "sym + conc + sym");

  result = match_arg("#{5}#{13}");
  ASSERT((*result == SymSeg(5, new SymSeg(13))),
        "sym + sym");

  result = match_arg("abc#!{5}def");
  ASSERT((*result == ConcSeg("abc#{5}def")), 
        "escaping #");

  result = match_arg("abc#!!!{5}def");
  ASSERT((*result == ConcSeg("abc#!{5}def")), 
        "escaping # and !");
}
