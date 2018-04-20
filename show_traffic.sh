#!/bin/bash
source ./ss_config.cfg
#echo "-----------------------进站流量-----------------------"
#iptables -n -v -L -t filter|grep dpt:
#echo 
#echo "-----------------------出站流量-----------------------"
#iptables -n -v -L -t filter|grep spt:
#echo "-----------------------账户信息-----------------------"
mysql -u$user -p$password $database -e "select A.dat_date,A.port,A.uname,concat(format(A.upload/1024/1024,0),'M') as upload,concat(format(A.download/1024/1024,0),'M') as download,A.source from $database.$hist_table A inner join $database.$table B on A.port=B.port and B.active='1' order by dat_date, source, port"
echo 
mysql -u$user -p$password $database -e "select port,ss_passwd,uname,if(utype=0,'时长','流量')as utype,concat(format(upload/1024/1024,0),'M') as upload,concat(format(download/1024/1024,0),'M') as download,concat(format(transfer_limit/1024/1024,0),'M') as 'limit',exp,if(active=1,'正常','欠费') as active from $database.$table union all
select 'all','---','---','---',concat(format(sum(upload)/1024/1024,0),'M'),concat(format(sum(download)/1024/1024,0),'M'),'---','---','---' from $database.$table order by active desc, cast(port as signed int) asc;"
date '+%Y%m%d %H:%M:%S'
