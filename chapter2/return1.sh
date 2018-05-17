#!/bin/bash

function test()
{
	echo "arg1 = $1"
	if [ $1 = "1" ];then
		return 1
	else
		return 0
	fi
}


echo 
echo "test 1"
test 1
echo $? #printf return result


echo 
echo "test 0"
test 0
echo $? #printf return result


echo 
echo "test 2"
test 2
echo $? #printf return result


