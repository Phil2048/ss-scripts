#!/bin/bash
yum install -y gcc automake autoconf libtool make build-essential autoconf libtool gcc
yum install -y curl curl-devel zlib-devel openssl-devel perl perl-devel cpio expat-devel gettext-devel
yum install -y git

cd /opt
git clone https://github.com/madeye/shadowsocks-libev.git
cd /opt/shadowsocks-libev
./configure && make
make install
