#!/bin/bash
##License generator
n=$RANDOM
read -p "Enter 6 numbers:" a
read -p "Licensee Name:" b
md5="$a$n"
hash="$(echo -n "$md5" | md5sum | cut -c1-32 )"
echo "$hash"
touch /var/www/html/$hash
echo "licensed" > /var/www/html/$hash
echo "$hash  License to : $b" >> /var/www/html/client/users.txt
