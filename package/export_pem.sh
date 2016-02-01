#!/bin/bash

source checkFile.sh

status=$(checkFile)
echo $status[0]
# if [[ "$status" = True ]]; then
#     echo "ok"
# else
#     echo "no"
# fi

# 輸入執行參數，建立 pro or dev 的 pem 憑證





# if [ ! checkFile ] ; then
# {
#     echo "123"
# }
# fi



# 判斷目錄是否存在
# if [ -d /shells/log1_"$1" ]; then
#  echo -n "目錄 /shells/log1_" ; echo -n $1; echo " 已經存在！"
# else
#  mkdir /shells/log1_$1
#  echo "建立子目錄 log1_$1"
# fi
