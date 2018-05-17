#!/bin/sh

# command 1 &&  command 2
# 分析：
# 一个命令如果不执行，直接删除
# echo "1"  执行成功，所以执行echo "2"

# echo "2" 执行成功，不执行 echo "3"

# 既然没有执行echo "3"，可以看做不存在 “ " || echo "3" ”，echo "2"后紧接“ && echo "4" ”

# echo "4" 执行成功，不执行echo "5"

# 既然没有执行echo "5"，可以看做不存在 “ " || echo "5" ”，echo "4"后紧接“ || echo "6" ”

#echo "4" 执行成功，不执行echo "6"

# 既然没有执行echo "6"，可以看做不存在 “ " || echo "6" ”，echo "4"后紧接“ && echo "7" ”

# echo "7" 执行成功，执行echo "8"

# echo "8" 执行成功，不执行echo "9"
# 

echo "1" && echo "2" || echo "3" && echo "4" || echo "5" || echo "6" && echo "7" && echo "8" || echo "9"

#上面的命令等价于
# echo "1"&& echo "2" && echo "4" && echo "7" && echo "8"
