#!/bin/bash
source /home/admin/ss_config.cfg
sql="select port,ss_passwd from user where uname='$1'"
mysql -u$user -p$password $database -N -e 'update user set active=0 where utype=1 and upload+download>transfer_limit'
mysql -u$user -p$password $database -N -e 'update user set active=0 where utype=0 and curdate()>exp'
mysql -u$user -p$password $database -N -e 'update user set active=1 where utype=1 and upload+download<transfer_limit'
mysql -u$user -p$password $database -N -e 'update user set active=1 where utype=0 and curdate()<=exp'
mysql -u$user -p$password $database -N -e "$sql" |while read a b;do 
iptables -A INPUT  -p tcp --dport $a;
iptables -A OUTPUT  -p tcp --sport $a;
nohup ssserver -p $a -k $b -m $method -t $timeout >/dev/null 2>&1 &
done

