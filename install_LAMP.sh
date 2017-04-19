#!/bin/bash
yum install -y git httpd mariadb-server mariadb php php-mysql epel-release
#rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm
#yum install -y phpmyadmin --enablerepo=remi
service httpd start
chkconfig httpd on
service mariadb start
chkconfig mariadb on
cd /var/www/html
git clone git@github.com:yb3712590/ss-manager.git /var/www/html/ssmanager
