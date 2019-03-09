#!/bin/bash
source ./ss_config.cfg

cd /opt
rm -rf udpspeeder
mkdir udpspeeder
cd udpspeeder
wget https://github.com/wangyu-/UDPspeeder/releases/download/20180806.0/speederv2_linux.tar.gz
tar -zxf speederv2_linux.tar.gz

cd /opt
rm -rf udp2raw
mkdir udp2raw
cd udp2raw
wget https://github.com/wangyu-/udp2raw-tunnel/releases/download/20181113.0/udp2raw_binaries.tar.gz
tar -zxf udp2raw_binaries.tar.gz
