export TARGET="TARGET_DOMAIN"
export PORT=443

#CURL
curl -s "https://crt.sh/?q=alvarezycia.com.ar&output=json" | jq -r '.[] | "\(.name_value)\n\(.common_name)"' | sort -u > "alvarezycia_crt.sh.txt"

#OPENSSL
openssl s_client -ign_eof 2>/dev/null <<<$'HEAD / HTTP/1.0\r\n\r' -connect "alvarezycia.com.ar:443" | openssl x509 -noout -text -in - | grep 'DNS' | sed -e 's|DNS:|\n|g' -e 's|^\*.*||g' | tr -d ',' | sort -u