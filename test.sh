#!/bin/sh
#

# 写一个函数判断nginx进程是否存在
# 先获取到pid
this_pid=$$

# 主题的功能就是判断nginx 的进程是否存在
function is_nginx_running
{
  ps -ef | grep nginx | grep -v grep | grep -v $this_pid &> /dev/null
  if [ $? -eq 0 ];then 
    return 
  else 
    return 1  
  fi
}

# 一旦函数执行的结果输出为1就证明nginx的进程是存在的

is_nginx_running && echo "Nginx is Running" || echo "Nginx is stoped!"