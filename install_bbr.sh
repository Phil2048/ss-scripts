#!/bin/bash
yum update -y
#rpm --import https://www.elrepo.org/RPM-GPG-KEY-elrepo.org

#rpm -Uvh http://www.elrepo.org/elrepo-release-7.0-3.el7.elrepo.noarch.rpm

yum --enablerepo=elrepo-kernel install -y kernel-ml

