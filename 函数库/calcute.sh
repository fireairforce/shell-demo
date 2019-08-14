#!/bin/sh
#
# 使用`.`将库文件引用进来

# . base_function
# 这里不能使用相对路径，直接使用绝对路径即可
path=`pwd`
. $path/base_function.sh
add 12 23
reduce 90 30
multiple 10 20
divide 30 10