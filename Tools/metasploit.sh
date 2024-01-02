#Basic
sysinfo

#Proxies
set Proxies http:127.0.0.1:8088
set ReverseAllowProxy true

#list processes
ps 
#Migrate meterpreter to a x64 process
migrate PID

#sessions
CTRL-Z
SESSIONS -i [sessionN]

# Local privEsc
use post/multi/recon/local_exploit_suggester