apt-get update
apt install -y sudo git python python3 vim
DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata
# Download ndn-cxx
git clone https://github.com/named-data/ndn-cxx

# Download NFD
git clone --recursive https://github.com/named-data/NFD

# Download Misc
git clone https://github.com/named-data/ndn-tools

apt-get -y install build-essential pkg-config libboost-all-dev \
                     libsqlite3-dev libssl-dev libpcap-dev

apt-get install -y doxygen graphviz python-sphinx

apt install -y  libpcap-dev build-essential libboost-all-dev libssl-dev libsqlite3-dev pkg-config python2-minimal

cd ndn-cxx
# git checkout tags/ndn-cxx-0.7.0
./waf configure --with-examples
./waf -j`nproc`
./waf install
./waf clean
ldconfig
cd ..

cd NFD
# git checkout tags/NFD-0.7.0
./waf configure
./waf -j`nproc`
./waf install
./waf clean
cd ..
cp /usr/local/etc/ndn/nfd.conf.sample /usr/local/etc/ndn/nfd.conf


cd ndn-tools
# git checkout tags/NFD-0.7.0
./waf configure
./waf -j`nproc`
./waf install
./waf clean
