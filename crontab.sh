#!/bin/bash
home=`pwd`
echo  "*/10 * *  *  *  root	sh $home/submit_traffic.sh" >> /etc/crontab
echo  "0  7  *  *  1  root	sh $home/reset_ss.sh" >> /etc/crontab
