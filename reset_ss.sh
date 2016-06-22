#!/bin/bash
source /home/admin/ss_config.cfg
killall ssserver 2>/dev/zero
killall shadowsocks-server 2>/dev/zero
mysql -u$user -p$password $database -N -e 'update user set active=0 where utype=1 and upload+download>transfer_limit'
mysql -u$user -p$password $database -N -e 'update user set active=0 where utype=0 and curdate()>exp'
mysql -u$user -p$password $database -N -e 'update user set active=1 where utype=1 and upload+download<transfer_limit'
mysql -u$user -p$password $database -N -e 'update user set active=1 where utype=0 and curdate()<=exp'
mysql -u$user -p$password $database -N -e 'select port,ss_passwd from user where active=1'|while read a b;
do 
#echo "nohup /gopkg/bin/shadowsocks-server -p=\"$a\" -k=\"$b\" -m=\"table\" -t=60 >/dev/null & "
#nohup /gopkg/bin/shadowsocks-server -p $a -k $b -m $method -t $timeout > /dev/null 2>&1 & 
nohup ssserver -p $a -k $b -m $method -t $timeout --fast-open >/dev/null 2>&1 &
done
