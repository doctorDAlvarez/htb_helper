- Static Port Forwarding
# Forward local port 1234 to access remote service 
# on localhost:3306
ssh -L 1234:localhost:3306 victimserver@10.129.202.64

#Forward multiple ports
ssh -L 1234:localhost:3306 -L 8080:localhost:80 victimserver@IP

#Confirm port forwared
netstat -antp | grep [PORT]
nmap -v -sV -p[PORTS] localhost

- Dynamic Port Forwarding
# Scan remote internal networks not direct access
# SSH Tunneling over SOCKS proxy.
1. ssh -D [LOCALPORT] TARGET@SERVER_IP
2. Update /etc/proxychains.conf
    socks4 127.0.0.1 [LOCALPORT] 
3. proxychains nmap -v -Pn -sT [INTERNAL-REMOTE-TARGET]
# (!Only full TCP scans, partial connections will error out)
