#!/usr/bin/env bash
{
 for(( i=0;i<=100;i+=20 ));do
# 	sleep 0.5  # s  
#	usleep 1 没有
#	sleep 0.1  # 100ms
	#sleep 0.2s
	sleep 0.1m
 	echo $i
	done
}  | whiptail --gauge "Please wait while installing" 6 60 0


