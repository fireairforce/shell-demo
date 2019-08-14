function add 
{
  # 直接使用函数给的两个参数来做一个命令替换
   echo "`expr $1 + $2`"
}

function reduce
{
   echo "`expr $1 - $2`"
}

function multiple
{
 echo "`expr $1 \* $2`"
}

function divide
{
 echo "`expr $1 \/ $2`"
}

function sys_load
{
   echo "Memory Info"
   echo 
   free -m
   echo 
   echo "Disk Usage"
   echo 
   df -h 
   echo
}