#!/bin/sh
#

while true 
do
  read -p "input a positive number: " num 
  expr $num + 1 &> /dev/null
  if [ $? -eq 0 ]; then
    if [ `expr $num \> 0` -eq 1 ]; then
      for((i=1;i<=$num;i++))
       do 
         sum=`expr $sum + $i`
       done 
         echo "1 + 2 + 3 +...$num = $sum"
        #  直接跳出循环
         exit  
    fi
  fi    
done