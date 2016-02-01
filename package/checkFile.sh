#!/bin/bash
# 檢查檔案是否存在
cerfile=./pro/develop.cer
keyfile=./pro/developKey.p12

function checkFile (){
    array=($cerfile $keyfile)
    # echo "${array[@]}"
    for i in 0 1
    do
        # echo "憑證： array[$i]=${array[$i]}"
        check=${array[$i]}
        temp="array[$i]=$check"
        if [ -e $check ] ; then
            echo "File exists, "$temp
            echo true
        else
            echo "File does not exist, "$temp
            echo false
        fi
    done
}
# checkFile
status=$(checkFile | grep 'false')
echo $status

要放到陣列中比較好

# if [[ $status == false ]]; then
#     echo "========="
#     no_file=$(checkFile | grep 'File does not exist')
#     echo $no_file
#     echo "========="
# else
#     echo "沒問題"
# fi

# file=./develop.cer
# if [ -e "$file" ]; then
# echo "File exists"
# else
# echo "File does not exist"
# fi
# tt=( checkFile | grep name)
# echo $tt
# returnt=$(checkFile)
# echo $returnt
# tt=$(checkFile)
# echo ${tt[@]}
