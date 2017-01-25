#!/bin/bash
source /home/admin/ss_config.cfg
#echo "-----------------------进站流量-----------------------"
#iptables -n -v -L -t filter|grep dpt:
#echo 
#echo "-----------------------出站流量-----------------------"
#iptables -n -v -L -t filter|grep spt:
#echo "-----------------------账户信息-----------------------"
mysql -u$user -p$password $database -e "select dat_date,port,uname,concat(format(upload/1024/1024,0),'M') as upload,concat(format(download/1024/1024,0),'M') as download from $database.$hist_table order by port"
echo 
mysql -u$user -p$password $database -e "select port,ss_passwd,uname,if(utype=0,'时长','流量')as utype,concat(format(upload/1024/1024,0),'M') as upload,concat(format(download/1024/1024,0),'M') as download,concat(format(transfer_limit/1024/1024,0),'M') as 'limit',exp,if(active=1,'正常','欠费') as active from $database.$table order by port"
date '+%Y%m%d %H:%M:%S'
