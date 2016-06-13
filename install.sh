#!/bin/bash
#Beta
LOC=`pwd`
yum install httpd wget -y
service iptables stop
chkconfig iptables off
mkdir /var/www/html/generator
mkdir /var/www/html/client
cp $LOC/server /usr/bin/server
chmod +x /usr/bin/server
touch /var/www/html/client/users.txt
cp $LOC/gen.sh /var/www/html/generator/
chmod +x /var/www/html/generator/gen.sh

