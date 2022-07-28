#!/usr/bin/env python3

import os
import sys
import glob
import subprocess

# example
# python3 driver.py ../llsc_gen/ImpCPSLLSC_quickSortTest/tests quicksort.c

if __name__ == "__main__":
    tests_folder = sys.argv[1]
    src_file = sys.argv[2]
    target = src_file.split(".")[0]
    cmd = "gcc -fprofile-arcs -ftest-coverage -o {} llsc_client.c {}".format(target, src_file)
    print("Compiling: {}".format(cmd))
    os.system(cmd)
    print("Reading test cases from {}".format(tests_folder))
    for test_case in glob.glob(tests_folder+"/*.test"):
        print("Testing {}".format(test_case))
        env = dict(os.environ)
        env["LLSC_TEST_FILE"] = test_case
        subprocess.Popen(["./"+target], env=env)
    os.system("gcov -b -c {}-{}".format(target, target))
