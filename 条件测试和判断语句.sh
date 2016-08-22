00:03---00：57
1.条件测试

用户可以使用测试语句  来测试指定的条件表达式 是真还是假。

当指定的条件表达式为真时，返回0

当指定的条件表达式为假时，返回非0


条件测试有2种。

1）test命令

    test  expression // expression可以由字符串，整数，文件名以及各种运算符组成
1 -eq 2
'string'

-z 'string'

-e file

2）[ 命令// [是一个2进制程序

 [ expression ]  // expression 和左右方括号之间都必须有一个空格





2.
字符串测试

通常情况下，对字符串的操作主要有 判断字符串变量是否为空，

&& 判断2个字符串是否相等。


在shell中，用户可以使用5种运算符，来对字符串进行操作。

 运算符               说明
string              判断指定的字符串是否为空
string1 = string 2  判断2个字符串string1 和 string 2 是否相等
string1 != string 2 判断2个字符串string1 和 string 2 是否不相等
-n string           判断string是否是 非空串
-z string           判断string是否是 空串

// 字符串为空，和 空串是2回事？？？



3.

a="abc"
test $a
echo $?//0


test -n "$a"
echo $?//0


test -z "$a"
echo $?//a

4
a="hello"
b="world"
[ "$a" = "$b" ]
echo $? //1
test "$a" != "$b"
echo $?// 0


a="Hello world. "
b="Hello world."

[ "$a" = "$b" ]
echo $?// 1



a="Hello world."
b="hello world."

[ "$a" = "$b" ]
echo $?// 1


5.
整数测试

test number1   op number2

or

[ number1   op number2 ]
// number1 , number2 可以是常量或者变量
// op 表示运算符



6.

number1  -eq  number2 // number1   是否等于 number2，如果相等，测试结果为0
number1  -nq  number2 // number1   是否不等于 number2，如果不相等，测试结果为0

number1  -gt  number2 // number1   是否大于 number2，如果大于，测试结果为0

number1  -lt  number2 // number1   是否小于 number2，如果小于，测试结果为0

number1  -ge  number2 // number1   是否大于等于 number2，如果大于等于，测试结果为0
number1  -le  number2 // number1   是否小于等于 number2，如果小于等于，测试结果为0




7.
12 -lt 14
echo $?


12 -gt 14
echo $?


x=12.3
y=12
[ "$x" -gt "$y"]
// 使用针对整数的运算符来比较  非整数会出错


8.
文件测试:

test op file

or

[ op file ]

-a file  //  文件是否存在，if file存在，结果为0
-b file  // 文件是否存在，且为块文件，if exist ,结果为0
-c file  //文件是否存在，且为字符文件，if exist ,结果为0
-d file // 文件是否存在，且为目录文件，if exist ,结果为0

-e file // 同-a
-s file // 文件的长度是否大于0 or 文件为非空文件。if exist ,结果为0
-f file // 文件存在，且为常规文件。if exist ,结果为0
-w file // 文件是否存在且可写。if exist ,结果为0
-L file // 文件是否存在，且为符号链接。if exist ,结果为0
-u file // 文件是否设置suid位。if exist ,结果为0
-r file // 文件是否存在，且可读。if exist ,结果为0
-x file //  文件是否存在，且可执行。if exist ,结果为0


test -a file1
[ -a file3 ]

test -d dir1
test -f file1
test -s file2

test -b file1
test -b /dev/sda

test -c /dev/tty


test -r file
test -w file
test -x file



chmod u+s hello.sh //为hello.sh设置setuid权限。执行该文件的用户就会临时拥有该文件owner的权限
test -u hello.sh


9.
逻辑操作符




