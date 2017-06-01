;On a du creé le DNS sans le Volume .
;Donc au niveau de racine , on a creé le fichier qui s'appelle "db.wt12.ephec-ti.be"
;db.wt12.ephec-ti.be
$ttl 38400
wt12.ephec-ti.be.       IN      SOA     ns1.wt12.ephec-ti.be. HE201228@students.ephec.be. (   #Email de Admin#
                                               2001062501 ; serial
                                               21600      ; refresh after 6 hours
                                               3600       ; retry after 1 hour
                                               604800     ; expire after 1 week
                                               86400 )    ; minimum TTL of 1 day

wt12.ephec-ti.be.              IN      NS        ns1.wt12.ephec-ti.be.
ns1.wt12.ephec-ti.be.          IN      A         IP de VPS
www.wt12.ephec-ti.be.          IN      A         IP de VPS
b2b.wt12.ephec-ti.be.          IN      A         IP de VPS
intranet.wt12.ephec-ti.be.     IN      A         IP de VPS
wt12.ephec-ti.be.         IN     MX 5       mail.wt12.ephec-ti.be.
mail.wt12.ephec-ti.be.         IN      A         79.137.39.42
_sip._udp.wt12.ephec-ti.be.   3600 IN  SRV 0 0 6201 sip.wt12.ephec-ti.be.
sip                            IN      A         IP de VPS
owncloud.wt12.ephec-ti.be.     IN       A         IP de vps Joseph

imap                        IN          CNAME  wt12.ephec-ti.be.
smtp                        IN          CNAME  wt12.ephec-ti.be.
pop3                        IN          CNAME  wt12.ephec-ti.be.


; OpenDKIM -- DKIM key mail for wt12.ephec-ti.be
mail._domainkey IN      TXT     ( "v=DKIM1; k=rsa; "
          "p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDZjUS4oOTFPW3PMEYCvTORvNNtL//fMMML/xYA4+7FDLkHg8ppK2Um4Y2hlBMYUgWkA5iEHeMi2XDIR+jjptGwMku4EFJzMbQbaV6gwYxwVZeCpy6hwrJY4ReEEbq2N4xfHCZXyKaGqqTZcP1QQ+Ah9wZB32/+2cNVCw39EbO30wIDAQAB" )  ; ----- DKIM key mail for wt12.ephec-ti.be

