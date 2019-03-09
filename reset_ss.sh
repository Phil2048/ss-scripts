#!/bin/bash
SHELL_FOLDER=$(cd "$(dirname "$0")";pwd)
source $SHELL_FOLDER/ss_config.cfg
killall ss-server 2>/dev/zero
killall ssserver 2>/dev/zero
killall go-shadowsocks2 2>/dev/zero
mysql -htky.vgpapa.com -u$user -p$password $database -N -e 'update user set active=0 where utype=1 and upload+download>transfer_limit'
mysql -htky.vgpapa.com -u$user -p$password $database -N -e 'update user set active=0 where utype=0 and curdate()>exp'
mysql -htky.vgpapa.com -u$user -p$password $database -N -e 'update user set active=1 where utype=1 and upload+download<transfer_limit'
mysql -htky.vgpapa.com -u$user -p$password $database -N -e 'update user set active=1 where utype=0 and curdate()<=exp'
mysql -htky.vgpapa.com -u$user -p$password $database -N -e 'select port,ss_passwd from user where active=1'|while read a b;
do 
#test
#echo "nohup /gopkg/bin/shadowsocks-server -p=\"$a\" -k=\"$b\" -m=\"table\" -t=60 >/dev/null & "
#
#golang
#nohup /gopkg/bin/go-shadowsocks2 -s "ss://AEAD_CHACHA20_POLY1305:$b@:$a" > /dev/null 2>&1 & 
#
#libev
nohup ss-server -p $a -k $b -m $method -t $timeout -u $otherparam >/dev/null 2>&1 &
#
#python
#nohup ssserver -p $a -k $b -m $method -t $timeout $otherparam >/dev/null 2>&1 &
done

nohup /opt/udpspeeder/speederv2_amd64 -s -l0.0.0.0:4096 -r127.0.0.1:7443   -k "passwd" --mode 0 -f2:4 --timeout 0 > /tmp/udpspeeder.log 2>&1 &
nohup /opt/udp2raw/udp2raw_amd64 -s -l0.0.0.0:4097 -r 127.0.0.1:4096  -a -k "passwd" --raw-mode faketcp > /tmp/udp2raw.log 2>&1 &
