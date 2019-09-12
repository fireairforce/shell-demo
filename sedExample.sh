#!/bin/bash
#

old_str=hadoop
new_str=HADOOP

# 注意在使用变量替换的时候一定要使用双引号而不是单引号
sed -i "s/$old_str/$new_str/g" str.txt