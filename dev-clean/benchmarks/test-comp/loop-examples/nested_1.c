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

#define SIZE 1000

int main() {
	int a = SIZE;

	for(a = 0; a < SIZE; ++a) {
		sym_print(a);
	}
	if(!(a == SIZE )) {
		__VERIFIER_error();
	}
	return 1;
}
