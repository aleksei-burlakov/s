systemctl stop packagekit
sleep 1
killall packagekitd
sleep 1
zypper in -y gcc gcc-c++ curl make git tar
zypper in -y zlib zlib-devel
zypper in -y libopenssl-devel autoconf bison libyaml-devel libffi-devel

wget https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.3.tar.gz
tar -zxvf ruby-4.0.3.tar.gz
cd ruby-4.0.3/
./configure
make -j$(nproc)
make install
