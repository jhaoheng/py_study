#!/bin/bash

# 詢問是否建立 pem 或者 直接執行測試
echo ""
echo "Please confirm the 'package' file:"
echo "./main.sh"
echo "./export_pem.sh"
echo "./checkFile.sh"
echo "./dev/"
echo "./pro/"
echo "Put your cer/key on 'dev/' or 'pro/'"
echo ""
echo "************************"
echo "1. 建立憑證 pem"
echo "2. openssl 執行 dev 憑證驗證(return code = 0 or 20,success)"
echo "3. openssl 執行 pro 憑證驗證(return code = 0 or 20,success)"
echo "4. 測試 apple gateway 是否正常運作"
read -p "請輸入數字 : " selected


echo "==========="
if [[ $selected == 1 ]]; then
    sh export_pem.sh
elif [[ $selected == 2 ]]
then
    sleep 2 | openssl s_client -connect gateway.sandbox.push.apple.com:2195 -cert ./dev/develop.pem -key ./dev/developKey.pem
elif [[ $selected == 3 ]]
then
    sleep 2 | openssl s_client -connect gateway.push.apple.com:2195 -cert ./pro/pro.pem -key ./pro/proKey.pem
elif [[ $selected == 4 ]]
then
    sleep 2 | telnet gateway.sandbox.push.apple.com 2195
fi
echo "==========="
