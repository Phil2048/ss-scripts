#!/bin/bash
#no longer use pip
#yum install -y epel-release
#yum install -y python python-setuptools python-pip 
#pip install  shadowsocks

cd /tmp
wget --no-check-certificate -O shadowsocks-master.zip https://github.com/shadowsocks/shadowsocks/archive/master.zip
unzip -q shadowsocks-master.zip
cd shadowsocks-master
python setup.py install
cd /tmp && rm -rf shadowsocks-master/ && rm -f shadowsocks-master.zip
