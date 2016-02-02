#!/bin/bash

# 詢問是否建立 pem 或者 直接執行測試
echo ""
echo "Create bt MAX HU 20160201"
echo "Please confirm the 'package' file:"
echo "./main.sh"
echo "./export_pem.sh"
echo "./checkFile.sh"
echo "./dev/"
echo "./pro/"
echo "Put your cer/key on 'dev/' or 'pro/', FIRST"
echo ""
echo "************************"
echo "1. Create 'PEM' from dev/ or pro/..."
echo "2. openssl, use dev to connect APNS(return code = 0 or 20,success)"
echo "3. openssl, use pro to connect APNS(return code = 0 or 20,success)"
echo "4. Test connect APNS is working"
echo "5. If you don't know how to create 'APNS certificate', check out!(website)"
echo "6. Troubleshooting Push Notifications(website)"
echo ""
read -p "Insert number : " selected


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
elif [[ $selected == 5 ]]
then
    open https://developer.apple.com/library/ios/documentation/IDEs/Conceptual/AppDistributionGuide/AddingCapabilities/AddingCapabilities.html#//apple_ref/doc/uid/TP40012582-CH26-SW11

elif [[ $selected == 6 ]]
    open https://developer.apple.com/library/ios/technotes/tn2265/_index.html#//apple_ref/doc/uid/DTS40010376
then
fi
echo ""
echo ""
echo "Finish..."
