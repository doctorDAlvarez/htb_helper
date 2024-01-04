#Basic curl
curl -s http://192.168.10.10 -H "Host: vhost.randomtarget.com"

#Seclist
/SecLists/Discovery/DNS/namelist.txt

#1 make vhosts list
#2 Bash script
cat ./vhosts | while read vhost;do echo "\n********\nFUZZING: ${vhost}\n********";curl -s -I http://192.168.10.10 -H "HOST: ${vhost}.randomtarget.com" | grep "Content-Length: ";done

#3 FFUF
ffuf -w ./vhosts -u http://192.168.10.10 -H "HOST: FUZZ.randomtarget.com" -fs 612
