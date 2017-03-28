#!/bin/sh

# command 1 &&  command 2
# 分析：
# 一个命令如果不执行，直接删除
cd p && (echo "1" || echo "2") ||  (echo "3" &&  echo "5") && (ls  7 ||  echo "8" || (echo "9" && echo "0")) 
