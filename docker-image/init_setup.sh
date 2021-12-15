# Scala
cd /llsc
curl https://downloads.lightbend.com/scala/2.12.10/scala-2.12.10.tgz --output scala-2.12.10.tgz
tar xvf scala-2.12.10.tgz

# STP
cd /llsc
git clone --depth 1 --branch smtcomp2020 https://github.com/stp/stp.git
cd stp
mkdir build
cd build
cmake ..
make
make install
ldconfig

# SAI/LLSC
cd /llsc
git clone --recurse-submodules https://github.com/Kraks/sai.git
