#!/bin/bash 

apaga=$1

rm -rf "etc/bind/db.$apaga"
rm -rf "/etc/apache2/sites-availables/$apaga"
rm -rf "/var/www/$apaga"

deluser $apaga -shell /bin/false -home /home/$apaga
deluser $delete  userftp

