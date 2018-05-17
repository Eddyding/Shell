#! /bin/bash


# input password routine
input_password(){
    printf "Enter new password："
    stty -echo # stty:set tty 用来控制终端或窗口的各种设置；-echo选项用来关闭自动打印每个输入字符的功能；
    read pass < /dev/tty
    echo # line feed
    printf "Enter again:"
    read pass2 < /dev/tty
    stty echo # 打开自动打印输入字符的功能
    echo 
}

input_password  #call input_password function

# printf "$pass\n"; printf "$pass2\n"
if [ $pass = $pass2 ];then
    echo  "密码匹配!开始登陆......"
else
    echo "输入错误！请重新输入"
    input_password
fi
