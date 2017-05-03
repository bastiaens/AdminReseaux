#!/bin/bash
mkdir -p /usr/src/asterisk
cd /usr/src/asterisk
wget downloads.asterisk.org/pub/telephony/asterisk/asterisk-13-current.tar.gz
tar -zxvf asterisk-13-current.tar.gz
rm -f asterisk-13-current.tar.gz
cd asterisk-13.*
./configure  --with-resample --with-pjproject-bundled
make menuselect/menuselect menuselect-tree menuselect.makeopts
# disable BUILD_NATIVE to avoid platform issues
menuselect/menuselect --disable BUILD_NATIVE menuselect.makeopts

# enable good things
menuselect/menuselect --enable BETTER_BACKTRACES menuselect.makeopts
menuselect/menuselect --enable codec_opus menuselect.makeopts

# download more sounds
for i in CORE-SOUNDS-EN MOH-OPSOUND EXTRA-SOUNDS-EN; do
    for j in ULAW ALAW G722 GSM SLN16; do
        menuselect/menuselect --enable $i-$j menuselect.makeopts
    done
done

make
make install
chown -R asterisk:asterisk /var/*/asterisk
chmod -R 755 /var/spool/asterisk
mkdir -p /etc/asterisk/

# copy default configs
cp /usr/src/asterisk/configs/basic-pbx/*.conf /etc/asterisk/

# set runuser and rungroup
sed -i -E 's/^;(run)(user|group)/\1\2/' /etc/asterisk/asterisk.conf

cd /
exec rm -rf /usr/src/asterisk


#service asterisk start
#tail -f /var/log/dmesg

#exec /usr/sbin/asterisk -g
