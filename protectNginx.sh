#!/bin/bash
#
# $$能够获取到脚本在运行过程中所产生的pid
this_pid=$$

# 作为一个守护进程，写成一个死循环
while true
do
# 这里要记得在脚本运行的时候将运行产生的pid也要同时过滤掉
ps -ef | grep nginx | grep -v grep | grep -v $this_pid &> /dev/null

# 如果上面的命令能够正确运行，则$?的值为0
if [ $? -eq 0 ];then
  # 如果 nginx 脚本
  echo "Nginx is running well"
  sleep 3
else 
  systemctl start nginx 
  echo "Nginx is down,Start it..."
fi
done