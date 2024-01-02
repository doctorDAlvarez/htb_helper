#Full port scan
sudo nmap -p- --min-rate=10000 -oA box-name-allports -v [TARGET]

#Starter
nmap -sC -sV -oA nmap [TARGET]
sudo nmap --min-rate 5000 -sS -n -vvv -Pn [TARGET] -oN scan_ports_tcp

#Recon scripts
sudo nmap -sCV -p22,80 -vvv [TARGET] -oN targeted

#All ports
sudo nmap --min-rate 5000 -sS -n -vvv -Pn -p- [TARGET] -oN scan_all_ports_tcp


