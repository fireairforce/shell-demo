#!/bin/sh
#

function get_users
{
  users=`cat /etc/passwd | cut -d: -f1`
  echo $users
}
userList=`get_users`

index=1
for u in $userList
do
 echo "The $index user is : $u"
 index=$(($index+1))
done