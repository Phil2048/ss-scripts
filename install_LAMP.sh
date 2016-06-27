#!/bin/bash
yum install -y httpd mariadb-server mariadb php php-mysql epel-release
rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm
yum install -y phpmyadmin --enablerepo=remi
service httpd start
chkconfig httpd on
service mariadb start
chkconfig mariadb on
