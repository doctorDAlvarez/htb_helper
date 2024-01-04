nmap --proxies http://127.0.0.1:8080 SERVER_IP -pPORT -Pn -sC #still experimental?
# or
proxychains nmap SERVER_IP -pPORT -Pn -sC