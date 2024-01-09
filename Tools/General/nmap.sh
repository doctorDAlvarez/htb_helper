#Full port scan
sudo nmap -p- --min-rate=10000 -oA box-name-allports -v [TARGET]
sudo nmap --min-rate 5000 -sS -n -vvv -Pn -p- [TARGET] -oN scan_all_ports_tcp

#Starter
sudo nmap -sC -sV -oA nmap [TARGET]
sudo nmap --min-rate 5000 -sS -n -vvv -Pn [TARGET] -oN scan_ports_tcp

#Banner grabber
sudo nmap -v TARGET --script banner.nse

#Recon scripts
sudo nmap -sCV -p22,80 -vvv [TARGET] -oN targeted



