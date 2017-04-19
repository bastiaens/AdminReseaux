#! /bin/bash

service postfix start
tail -f 

service dovecot start
tail -f /var/log/dmesg

