#enumerate directories and files
gobuster dir -u http://www.targetwebsite.com/ -w /usr/share/seclists/discovery/web-content/directory-list-2.3-small.txt '[-x php,html,htm]' -t 50 (threads)

#gobuster DNS module Subdomain enumeration (ACTIVE)
 #basic
 gobuster dns -d target.domain -w /usr/share/seclists/discovery/DNS/subdomain-top1million-5000.txt -t 20 (threads)

#Complex patterns : patterns.txt
1. lert-api-{GOBUSTER}-test
2. pan-api-{GOBUSTER}-test

export target=TARGET
export nameserver=NSTARGET
export wordlist=numbers.txt

gobuster dns -q -r "${nameserver}" -d "${target}" -w "${wordlist}" -p ./patterns.txt -o "gobuster_${target}.txt"

