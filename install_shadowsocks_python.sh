#!/bin/bash
yum install -y epel-release
yum install -y python python-setuptools python-pip 
pip install  shadowsocks
sh ./crontab.sh
