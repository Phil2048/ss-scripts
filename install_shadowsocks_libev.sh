#!/bin/bash
source ./ss_config.cfg
#yum install -y gcc automake autoconf mesa-libEGL-devel libtool make build-essential libtool asciidoc xmlto
#yum install -y curl curl-devel zlib-devel openssl-devel perl perl-devel cpio expat-devel gettext-devel
#yum install -y git udns udns-devel libev-devel mbedtls mbedtls-devel libsodium libsodium-devel pcre-devel asciidoc c-ares-devel

cd /opt
rm -rf /opt/shadowsocks-libev
git clone https://github.com/shadowsocks/shadowsocks-libev.git
cd /opt/shadowsocks-libev
git submodule update --init --recursive
./autogen.sh
./configure && make
make install

#cd ${home}
#cp ./local.conf /etc/sysctl.d/local.conf
#sysctl --system
