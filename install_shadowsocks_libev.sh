#!/bin/bash
source /home/admin/ss_config.cfg
yum install -y gcc automake autoconf libtool make build-essential autoconf libtool gcc
yum install -y curl curl-devel zlib-devel openssl-devel perl perl-devel cpio expat-devel gettext-devel
yum install -y git


cd /opt
rm -rf /opt/shadowsocks-libev
git clone https://github.com/madeye/shadowsocks-libev.git
cd /opt/shadowsocks-libev
./configure && make
make install

cd ${home}
cp ./local.conf /etc/sysctl.d/local.conf
sysctl --system
