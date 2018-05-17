#!/bin/sh

# command 1 &&  command 2
# 分析：
# 一个命令如果不执行，直接删除
if ls ./iii
then 
	echo "1"
elif echo "2"&& ls ./i
then 
	echo "3"
else
	echo "4"
fi
