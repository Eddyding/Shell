#!/bin/bash

name=`whoami` #who am i | awk '{print $1}' or  whoami | awk '{print $1}' or echo $LOGNAME
echo $name  

echo -------------------

version=`uname -r` 
echo $version

echo -------------------

cat /etc/shells
echo $SHELL

echo -------------------

 /bin/dash # 切换到dash shell ,exit

# 使用ifconfig 设置Ip, netmask,gateway
 #sudo ifconfig -a | more
 #sudo ifconfig eth0 192.168.106.150 netmask 255.255.255.0
 #sudo route add default gw 192.168.106.1
 #
 #



