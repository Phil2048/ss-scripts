#!/bin/bash
yum install -y httpd mariadb-server mariadb php php-mysql http://ftp.riken.jp/Linux/fedora/epel/7/x86_64/e/epel-release-7-5.noarch.rpm 
rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm
yum install -y phpmyadmin --enablerepo=remi
service httpd start
chkconfig httpd on
service mariadb start
chkconfig mariadb on
