FROM ubuntu:latest
MAINTAINER HE201228@students.ephec.be

RUN apt-get -y update 
RUN apt-get -y upgrade
RUN apt-get install -y postfix
RUN apt-get install -y dovecot-common dovecot-imapd dovecot-pop3d


EXPOSE 25
#pop3
EXPOSE 143 # this is the default IMAP non-encrypted port
EXPOSE 993 #this is the port you need to use if you want to connect using IMAP securely
EXPOSE 587 #this is the default SMTP non-encrypted port


ADD postfix/master.cf /etc/postfix/master.cf
ADD postfix/main.cf /etc/postfix/main.cf
ADD postfix/aliases /etc/aliases
ADD dovecot/dovecot.conf /etc/dovecot/dovecot.conf
ADD start.sh /start.sh
RUN chmod -R 777 /start.sh
ENTRYPOINT ["/start.sh"]
