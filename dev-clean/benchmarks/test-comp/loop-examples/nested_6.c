// This file is part of the SV-Benchmarks collection of verification tasks:
// https://github.com/sosy-lab/sv-benchmarks
//
// This file was part of CPAchecker,
// a tool for configurable software verification:
// https://cpachecker.sosy-lab.org
//
// SPDX-FileCopyrightText: 2007-2020 Dirk Beyer <https://www.sosy-lab.org>
//
// SPDX-License-Identifier: Apache-2.0

#include "../../../headers/llsc_client.h"

/* FIXME: Segmentation fault. SIZE=5 is fine <2022-02-24, David Deng> */
#define SIZE 6
#define DEBUG 0

int main() {
	int a = SIZE;
	int b = SIZE;
	int c = SIZE;
	int d = SIZE;
	int e = SIZE;
	int f = SIZE;

	for(a = 0; a < SIZE; ++a) {
#if DEBUG
		print_string("a: ");
		sym_print(a);
#endif
		for(b = 0; b < SIZE; ++b) {
#if DEBUG
			print_string("b: ");
			sym_print(b);
#endif
			for(c = 0; c < SIZE; ++c) {
#if DEBUG
				print_string("c: ");
				sym_print(c);
#endif
				for(d = 0; d < SIZE; ++d) {
#if DEBUG
					print_string("d: ");
					sym_print(d);
#endif
					for(e = 0; e < SIZE; ++e) {
#if DEBUG
						print_string("e: ");
						sym_print(e);
#endif
						for(f = 0; f < SIZE; ++f) {
#if DEBUG
							print_string("f: ");
							sym_print(f);
#endif
						}
					}
				}
			}
		}
	}
#if DEBUG
	print_string("Out of loop");
#endif
	if(!(a == SIZE && b == SIZE && c == SIZE && d == SIZE && e == SIZE && f == SIZE)) {
		__VERIFIER_error();
	}
	return 1;
}
