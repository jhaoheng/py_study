#!/bin/bash
#!/usr/bin/expect

source ./checkFile.sh

status=$(fileStatus)
echo $status
IFS='+' read -a status_array <<< "$status"
if [[ ${status_array[0]} == true ]]; then
    if [[ ${status_array[1]} == dev ]]; then
        openssl x509 -in ./dev/develop.cer -inform der -out ./dev/develop.pem
        openssl pkcs12 -nocerts -out ./dev/developKey.pem -in ./dev/developKey.p12
        cat ./dev/develop.pem ./dev/developKey.pem > ./dev/apns_dev.pem
    else
        openssl x509 -in ./pro/pro.cer -inform der -out ./pro/pro.pem
        openssl pkcs12 -nocerts -out ./pro/proKey.pem -in ./pro/proKey.p12
        cat ./pro/pro.pem ./pro/proKey.pem > ./pro/apns_pro.pem
    fi
fi
