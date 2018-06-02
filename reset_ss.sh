#!/bin/bash
SHELL_FOLDER=$(cd "$(dirname "$0")";pwd)
source $SHELL_FOLDER/ss_config.cfg
killall ss-server 2>/dev/zero
killall ssserver 2>/dev/zero
killall shadowsocks-server 2>/dev/zero
mysql -hvgpapa.com -u$user -p$password $database -N -e 'update user set active=0 where utype=1 and upload+download>transfer_limit'
mysql -hvgpapa.com -u$user -p$password $database -N -e 'update user set active=0 where utype=0 and curdate()>exp'
mysql -hvgpapa.com -u$user -p$password $database -N -e 'update user set active=1 where utype=1 and upload+download<transfer_limit'
mysql -hvgpapa.com -u$user -p$password $database -N -e 'update user set active=1 where utype=0 and curdate()<=exp'
mysql -hvgpapa.com -u$user -p$password $database -N -e 'select port,ss_passwd from user where active=1'|while read a b;
do 
#test
#echo "nohup /gopkg/bin/shadowsocks-server -p=\"$a\" -k=\"$b\" -m=\"table\" -t=60 >/dev/null & "
#
#golang
#nohup /gopkg/bin/shadowsocks-server -p $a -k $b -m $method -t $timeout > /dev/null 2>&1 & 
#
#libev
nohup ss-server -p $a -k $b -m $method -t $timeout -u $otherparam >/dev/null 2>&1 &
#
#python
#nohup ssserver -p $a -k $b -m $method -t $timeout $otherparam >/dev/null 2>&1 &
done

