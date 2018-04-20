#!/bin/bash
home=`pwd`
echo  "* */3 *  *  *  root	sh $home/submit_traffic.sh" >> /etc/crontab
echo  "0  8  *  *  *  root	sh $home/reset_ss.sh" >> /etc/crontab
echo  "sh $home/submit_traffic.sh 2> /dev/null" >> /etc/rc.local
echo  "sh $home/submit_traffic.sh 2> /dev/null" >> /etc/rc.local
echo  "sh $home/reset_ss.sh 2> /dev/null" >> /etc/rc.local
chmod a+x /etc/rc.local
