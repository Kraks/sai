#!/usr/bin/env bash
source ~/sai_install/env.sh

rm full.log
PREGENDIR=/u/antor/u12/deng254/sai_install/coreutils/uclibc_linked_pregen
MANUALDIR=/u/antor/u12/deng254/sai_install/coreutils/manual_linked

exec >  >(tee -ia full.log)
exec 2> >(tee -ia full.log >&2)

candidates=(
true
false
# base32
# base64
# comm
# cut
# dirname
# expand
# fold
# join
# link
# paste
# pathchk
)

declare -A options=(
[true]='--argv="name #3" --add-sym-file A'
[false]='--argv="name #3" --add-sym-file A'
[base32]='--argv="name #3" --add-sym-file A'
[base64]='--argv="name #3" --add-sym-file A'
[comm]='--argv="name #3" --add-sym-file A'
[cut]='--argv="name #3" --add-sym-file A'
[dirname]='--argv="name #3" --add-sym-file A'
[expand]='--argv="name #3" --add-sym-file A'
[fold]='--argv="name #3" --add-sym-file A'
[join]='--argv="name #3" --add-sym-file A'
[link]='--argv="name #3" --add-sym-file A'
[paste]='--argv="name #3" --add-sym-file A'
[pathchk]='--argv="name #3" --add-sym-file A'
)

for f in ${candidates[@]}; do
	option=${options[$f]}
	./test_benchmark $PREGENDIR/$f.ll pregen_$f $option
	./test_benchmark $MANUALDIR/$f.ll manual_$f $option
done


# echo ------------------ true_posix ------------------------
# date
# ./test_benchmark /u/antor/u12/deng254/sai_install/coreutils/slected-coreutils-test/true_kleeposix_uclibc.ll '--argv="./true.bc --sym-arg 11"'
# date
# echo ------------------ true_uclibc ------------------------
# ./test_benchmark /u/antor/u12/deng254/sai_install/coreutils/slected-coreutils-test/true_llsc_uclibc.ll '--argv="./true.bc #10"'
