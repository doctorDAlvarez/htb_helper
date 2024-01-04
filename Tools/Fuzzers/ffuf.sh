#vhost discovery
ffuf -w ./vhosts -u http://TARGET -H "HOST: FUZZ.randomtarget.com" -fs 612

# Fuzz for reaction to special chars
ffuf -request search.req -request-proto http -w special.txt -mc all

#FUZZ CRAWL files and directories
#common backup unreference list
#raft-[ small | medium | large ]-extensions.txt files from SecLists.
ffuf -recursion -recursion-depth 1 -u http://TARGET/FUZZ -w /opt/useful/SecLists/Discovery/Web-Content/raft-small-directories-lowercase.txt

#Sensitive Information disclosure
#Make a folders.txt file with found folders
#use cewl to crawl the website and extract keyworkds
#have a list of common backup or unreference extensions
ffuf -w ./folders.txt:FOLDERS,./wordlist.txt:WORDLIST,./extensions.txt:EXTENSIONS -u http://[TARGET]/FOLDERS/WORDLISTEXTENSIONS