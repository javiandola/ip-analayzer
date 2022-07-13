#!/bin/bash
if [[ $1 == -h ]]; then
    echo -e "Use: ip-analayzer <ip>"
    echo -e "Example"
    echo -e "ip-analayzer 8.8.8.8.8"
fi    

curl -s "https://www.geolocation.com/es?ip=${1}#ipresult" | html2text | grep -A 12 "countryCode"
exit
