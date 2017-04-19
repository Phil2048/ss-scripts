#!/bin/bash
yum install -y ppp pptpd
echo 'localip 192.168.0.1' >> /etc/pptpd.conf
echo 'remoteip 192.168.0.234-238,192.168.0.245' >> /etc/pptpd.conf
echo 'ms-dns 8.8.8.8' >> /etc/ppp/options.pptpd
echo 'ms-dns 8.8.4.4' >> /etc/ppp/options.pptpd
echo 'admin pptpd a1992612 *' >> /etc/ppp/chap-secrets
echo 'net.ipv4.ip_forward=1' >> /etc/sysctl.conf
sysctl -p
service pptpd restart
chkconfig pptpd on
