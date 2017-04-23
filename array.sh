#!/bin/bash

array_name=(0 1 2 3)

echo ${array_name} # 打印数组第1个元素
echo 

array2=(
A
B
C
D)

echo ${array2}  # 打印数组第1个元素
echo 

array3[0]=a
array3[1]=b
array3[2]=c
array3[3]=d

echo ${array3}
echo 

# 可以不 使用连续的下标，而且下标的范围没有限制


# 读取数组元素： ${array_name[index]}
echo $array3[1]  #a[1]
echo array3[1]  #array3[1]
echo ${array3[1]} #b
# 使用@ or *  可以获取数组中的所有元素
echo ${array3[*]}
echo ${array3[@]}
# 获取数组的长度

#获取数组的长度[也就是元素的个数] 与获取 字符串 长度的方法相同，比如：
length=${#array3[@]}
echo $length
# or 
length=${#array3[*]}
echo $length

#取得某个数组元素的长度
array3[4]="jjuab" 
length=${#array3[4]} #  ${#array_name[index]}
echo $length

array3[-1]=28
echo ${!array3[@]} # 输出该数组所有的下标,0,1,...

var=123
echo ${#var} #输出变量var的长度


