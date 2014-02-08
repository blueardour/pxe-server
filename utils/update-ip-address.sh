# ! /bin/bash

ip=`ifconfig eth0 | grep 'inet addr' | awk '{print $2}' | awk -F: '{print $2}'`

cd /tftp_root/utils

lists="../13.winxp-x86-en/xp86e.sif ../pxelinux.cfg/default ../1.winxp-x86-ch/xp86c.sif"
for i in $lists
do
  echo update ... [$i]
  if [ -f $i-origin ];then cp $i-origin $i; else cp $i $i-origin; fi
  sed -i "s/192.168.1.1/$ip/" $i
done
