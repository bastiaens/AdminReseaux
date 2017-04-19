#On a du creé le DNS sans le Volume .
#Donc au niveau de racine , on a creé le fichier qui s'appelle "db.wt12.ephec-ti.be"
//db.wt12.ephec-ti.be
$ttl 38400
wt12.ephec-ti.be.       IN      SOA     ns1.wt12.ephec-ti.be. HE201228@students.ephec.be. (   #email de Admin
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
mail.wt12.ephec-ti.be.         IN     MX 5       mail.wt12.ephec-ti.be.
mail.wt12.ephec-ti.be.         IN      A         IP de VPS
