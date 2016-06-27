#!/bin/bash
home=`pwd`
echo  "* */6 *  *  *  root	sh $home/submit_traffic.sh" >> /etc/crontab
echo  "0  8  *  *  *  root	sh $home/reset_ss.sh" >> /etc/crontab
