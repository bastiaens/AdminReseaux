# tous apres le "#" est un commentaire
#On a du creé le DNS sans le Volume .
#Donc au niveau de racine , on a creé le fichier qui s'appelle "db.wt12.ephec-ti.be"
#db.wt12.ephec-ti.be
$ttl 38400
wt12.ephec-ti.be.       IN      SOA     ns1.wt12.ephec-ti.be. HE201228@students.ephec.be. (   #Email de Admin#
                                                                        340000
                                                                        15000
                                                                        10000
                                                                        500000
                                                                        40000 )

wt12.ephec-ti.be.              IN      NS        ns1.wt12.ephec-ti.be.
ns1.wt12.ephec-ti.be.          IN      A         IP de VPS
www.wt12.ephec-ti.be.          IN      A         IP de VPS
b2b.wt12.ephec-ti.be.          IN      A         IP de VPS
intranet.wt12.ephec-ti.be.     IN      A         IP de VPS
wt12.ephec-ti.be.         IN     MX 5       mail.wt12.ephec-ti.be.
mail.wt12.ephec-ti.be.         IN      A         IP de VPS
_sip._udp.wt12.ephec-ti.be.   3600 IN  SRV 0 0 6201 sip.wt12.ephec-ti.be.
sip                            IN      A         IP de VPS

