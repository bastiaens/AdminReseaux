On a du creé le DNS sans le Volume .
Donc au niveau de racine , on a creé le fichier qui s'appelle "db.wt12.ephec-ti.be"
//db.wt12.ephec-ti.be
$ttl 38400
wt12.ephec-ti.be.       IN      SOA     ns1.wt12.ephec-ti.be. HE201228@students.ephec.be. (
                                                                        340000
                                                                        15000
                                                                        10000
                                                                        500000
                                                                        40000 )

wt12.ephec-ti.be.              IN      NS        ns1.wt12.ephec-ti.be.

ns1.wt12.ephec-ti.be.          IN      A         151.80.119.125
www.wt12.ephec-ti.be.          IN      A         151.80.119.125
b2b.wt12.ephec-ti.be.          IN      A         151.80.119.125
intranet.wt12.ephec-ti.be.     IN      A         151.80.119.125
