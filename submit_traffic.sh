#!/bin/bash
source /home/admin/ss_config.cfg
#将新一期的流量数值写入数据库
mysql -u$user -p$password $database -N -e "select port from $table" | while read port;do
upload=`iptables -n -v -x -L -t filter|grep dpt|grep dpt:$port|awk -F' ' '{sum+=$2} END {print sum}'`
download=`iptables -n -v -x -L -t filter|grep spt|grep spt:$port|awk -F' ' '{sum+=$2} END {print sum}'`
echo "$port:$upload u"
echo "$port:$download d"
sql="update $table set upload=upload+$upload where port='$port'"
mysql -u$user -p$password $database -N -e "$sql"
sql="update $table set download=download+$download where port='$port'"
mysql -u$user -p$password $database -N -e "$sql"
done
#刷新防火墙
iptables -F
mysql -u$user -p$password $database -N -e "select port from $table where active=1"|while read a; do 
iptables -A INPUT  -p tcp --dport $a;
iptables -A OUTPUT  -p tcp --sport $a;
iptables -A INPUT -p udp --dport $a;
iptables -A OUTPUT -p udp --sport $a;
done
#iptables -I INPUT -p tcp -m connlimit --connlimit-above 50 -j REJECT
#iptables -I INPUT -p udp -m connlimit --connlimit-above 50 -j REJECT
#添加VPN防火墙策略
#iptables -t nat -A POSTROUTING -s 192.168.0.0/24 -j SNAT --to-source $public_ip 
#如果月初则清空流量数据
time_point=`date "+%d_%H%M"`
#time_point=01_0000
#echo $time_point
if [ "$time_point" == "01_0000" ];then
mysql -u$user -p$password $database -N -e "update $database.$table set upload=0,download=0"
fi
