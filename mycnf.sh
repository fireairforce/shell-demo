#!/bin/bash
#

FILE_NAME=/root/lessons/my.cnf

# 获取到所有的段
function get_all_segments
{
    # 可以使用grep对文本进行一个处理
    # grep -E "^\[" my.cnf
    # 使用sed 加个管道|把[]替换掉(替换为空)
    # 同时把结果输出出去，记得使用命令替换
    echo "`sed -n '/\[.*\]/' $FILE_NAME | sed -e 's/\[//g' | -e 's/\]//g'`"     
}

# 把段名参数传进去去拿参数
function count_items_in_segement
{
    # 使用区间匹配sed -n "//,//p" xxx $1是传递进来的段名参数
    #　同时过滤掉#开头的行和空号(以$开头的),还有[mysql],[server]这些信息
    items=`sed -n "/\[$1\]/,/\[.*\]/p" $FILE_NAME | grep -v "^#" | grep -v ^$  | grep -v "\[.*\]"`
    # 然后统计items的行数
    index=0
    for item in $items 
    do 
      index=`expr $index + 1`
    done 

    echo $index  
}
number=0
# 先得到所有的列表
for seg in `get_all_segments`
# 把段名作为参数传给count_items_in_segement
do
  number=`expr $number + 1`
  #   把seg作为参数过去,得到列表的数目
  items_count=`count_items_in_segement $seg`
  echo "$number: $seg $items_count"
done
  