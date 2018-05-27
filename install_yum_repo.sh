#!/bin/bash
yum remove -y epel-release
mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup
wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo
yum install -y https://mirrors.aliyun.com/epel/epel-release-latest-7.noarch.rpm
yum install -y https://mirrors.aliyun.com/remi/enterprise/remi-release-7.rpm
yum clean all
yum makecache
