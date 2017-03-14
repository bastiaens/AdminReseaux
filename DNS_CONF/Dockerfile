// le Dockerfile:
FROM ubuntu:latest                                                                          //de l'image
MAINTAINER HE201228@students.ephec.be                                                      //le mail de la personne 'Admin'

RUN apt-get update                                                                        //mettre le mis à jour
RUN apt-get install -y bind9                                                             //installer bind9
RUN apt-get install -y dnsutils                                                         //installer les utils de DNS 

ENV DATA_DIR=/data/bind       

ADD start /start
RUN chmod 755 /start                                                                  //rendre le fichier excutable

EXPOSE 53/udp 53/tcp                                                                  //tourne sur le prot 53 au niveau de UDP et TCP
VOLUME ["${DATA_DIR}"]         
CMD ["/start"]                                                                        // excuter

ADD named.conf.local /etc/bind/named.conf.local
ADD db.wt12.ephec-ti.be /etc/bind
RUN chmod -R 777 /etc/bind
