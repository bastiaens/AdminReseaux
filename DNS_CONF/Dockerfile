#le Dockerfile:
FROM ubuntu:latest                                                                           
#le mail de la personne Admin
MAINTAINER HE201228@students.ephec.be                                                     
#mettre le mis à jour
RUN apt-get update
#installer bind9
RUN apt-get install -y bind9
#installer les utils de DNS
RUN apt-get install -y dnsutils                                                          

ENV DATA_DIR=/data/bind       
#on copie le fichier start et on le met dans le container en l'appelant /start
ADD start /start
#rendre le fichier excutable
RUN chmod 755 /start                                                                  
#tourne sur le prot 53 au niveau de UDP et TCP

EXPOSE 53/udp 53/tcp                     
VOLUME ["${DATA_DIR}"]
#excuter
CMD ["/start"]                                                                        

ADD named.conf.local /etc/bind/named.conf.local
ADD db.wt12.ephec-ti.be /etc/bind
RUN chmod -R 777 /etc/bind
