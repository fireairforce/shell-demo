#!/bin/sh
#
# 判断一个正整数
while true
do
    # 接收到用户的一个输入
    read -p "pls input a positive number: " num
    expr $num + 1 &> /dev/null
    # 将运算的结果直接放到垃圾桶里面去
    if [ $? -eq 0 ]; then 
        # 如果这个整数也大于0(结果为1则判断成功)
      if [ `expr $num \> 0` -eq 1 ];then
            for((i=1;i<=$num;i++))
              do
                  sum=`expr $sum + $i`
              done
                  echo "1+2+3+...+$num = $sum"  
                  exit      
      fi
    fi
    echo "error ,input enlegal"
    continue
done 