#!/bin/sh

while :; do

net rpc service status wampapache64 -I 10.1.43.35 -U administrator%1nt3lbr@s > arquivo.txt

nota=`cut -c27 arquivo.txt | sed -n 3p`

if [ $nota -lt 5 ]; then

cp /root/wamp-apache.call /var/spool/asterisk/outgoing/

fi

sleep 10

done

