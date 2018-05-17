#!/bin/bash
a=1
b=2

if [ $a -gt $b ];then
	echo "a > b" 
else 
	echo "a <= b"
fi

a=1.1
b=2
c=`echo "$a > $b" |bc`
echo $c

a=1.1
b=2.3
c=`echo "$a > $b" |bc`
echo $c

a=3.1
b=2.3
c=`echo "$a > $b" |bc`
echo $c



a="abc de"
b="abcde"
if [ "$a" = "$b" ]
then 
	echo "a is same as b"
else
	echo "a is different from b" 
fi


