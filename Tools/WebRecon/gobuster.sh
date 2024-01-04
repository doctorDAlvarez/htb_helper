#patterns.txt
1. lert-api-{GOBUSTER}-test
2. pan-api-{GOBUSTER}-test

#gobuster DNS module Subdomain enumeration (ACTIVE)
export target=TARGET
export nameserver=NSTARGET
export wordlist=numbers.txt

gobuster dns -q -r "${nameserver} -d "${target} -w "${wordlist} -p ./patterns.txt -o "gobuster_${target}.txt"