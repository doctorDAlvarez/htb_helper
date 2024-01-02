# Fuzz for reaction to special chars
ffuf -request search.req -request-proto http -w special.txt -mc all

#Enumarte Directories and files
gobuster dir -u http://www.targetwebsite.com/ -w /usr/share/wordlists/big.txt -x php,html,htm