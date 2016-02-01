#!/bin/bash

# 輸入建立 dev or pro file
read -p "please input 'dev' or 'pro' : " fileName

echo "=================="
echo "you choice : "$fileName
echo "=================="

# 檢查檔案是否存在
if [[ $fileName == dev ]]; then
    cerfile=./$fileName/develop.cer
    keyfile=./$fileName/developKey.p12
else
    cerfile=./$fileName/pro.cer
    keyfile=./$fileName/proKey.p12
fi

function checkFile (){
    array=($cerfile $keyfile)
    # echo "${array[@]}"
    for i in 0 1
    do
        # echo "憑證： array[$i]=${array[$i]}"
        check=${array[$i]}
        temp="array[$i]=$check"
        if [ -e $check ] ; then
            # echo "File exists, "$temp":true"
            array2=$array2+"File exists, "$temp":true"
        else
            # echo "File does not exist, "$temp":false"
            array2=$array2+"File does not exist, "$temp":false"
        fi
    done

    echo "return :" $array2
}
# checkFile
status=$(checkFile)
# echo $status
IFS='+' read -a return_checkFile <<< "$status"
# printf ${return_checkFile[0]}

# cer
# echo ${array3[1]}
cer_status=${return_checkFile[1]}
IFS=':' read -a cer_status_array <<< "$cer_status"
# echo ${temp_1_array[1]}
if [[ ${cer_status_array[1]} == false ]]; then
    echo ${cer_status_array[0]}
fi

# key
key_status=${return_checkFile[2]}
IFS=':' read -a key_status_array <<< "$key_status"
if [[ ${key_status_array[1]} == false ]]; then
    echo ${key_status_array[0]}
fi

function fileStatus()
{
    if [[ ${key_status_array[1]} == true && ${cer_status_array[1]} == true ]]; then
        echo true'+'$fileName
    fi
}
