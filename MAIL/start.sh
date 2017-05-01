#!/bin/bash #the character "! is a shebang, in an executable, it tells the kernel how to run the file

newaliases
service postfix start
tail -f /var/log/dmesg

service dovecot start
tail -f /var/log/dmesg
