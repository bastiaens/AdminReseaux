#le Dockerfile:
FROM ubuntu:latest                                                                            //de l'image
#le mail de la personne 'Admin'
MAINTAINER HE201228@students.ephec.be                                                     

#mettre le mis à jour
RUN apt-get update
#installer bind9
RUN apt-get install -y bind9
#installer les utils de DNS
RUN apt-get install -y dnsutils                                                          

ENV DATA_DIR=/data/bind       

ADD start /start
#rendre le fichier excutable
RUN chmod 755 /start                                                                  
#tourne sur le prot 53 au niveau de UDP et TCP
EXPOSE 53/udp 53/tcp                                                                  //tourne sur le prot 53 au niveau de UDP et TCP
VOLUME ["${DATA_DIR}"]         
CMD ["/start"]                                                                        // excuter

ADD named.conf.local /etc/bind/named.conf.local
ADD db.wt12.ephec-ti.be /etc/bind
RUN chmod -R 777 /etc/bind
