#!/usr/bin/env bash
source ~/sai_install/env.sh

exec >  >(tee -ia full.log)
exec 2> >(tee -ia full.log >&2)

candidates=(base32 base64 comm cut dirname expand false true fold join link paste pathchk)

for f in ${candidates[@]}; do
	fullpath=~/sai_install/coreutils/manual_linked/$f.ll
	./test_benchmark $fullpath
done


# echo ------------------ true_posix ------------------------
# date
# ./test_benchmark /u/antor/u12/deng254/sai_install/coreutils/slected-coreutils-test/true_kleeposix_uclibc.ll '--argv="./true.bc --sym-arg 11"'
# date
# echo ------------------ true_uclibc ------------------------
# ./test_benchmark /u/antor/u12/deng254/sai_install/coreutils/slected-coreutils-test/true_llsc_uclibc.ll '--argv="./true.bc #10"'
