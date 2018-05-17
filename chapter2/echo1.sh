#!/bin/bash

function test()
{
	echo "arg1 = $1"
	if [ $1 = "1" ];then
		echo "1"
	else
		echo  "0"
	fi
}


echo 
echo "test 1"
test 1


echo 
echo "test 0"
test 0


echo 
echo "test 2"
test 2


