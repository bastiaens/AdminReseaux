#! /bin/bash

service postfix start
tail -f /var/log/dmesg

service dovecot start
tail -f /var/log/dmesg

