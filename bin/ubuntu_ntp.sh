#!/bin/sh

apt-get -y install ntp
echo "server 10.180.2.231
server 10.20.100.231" > /etc/ntp.conf
/etc/init.d/ntp start
hwclock -w
