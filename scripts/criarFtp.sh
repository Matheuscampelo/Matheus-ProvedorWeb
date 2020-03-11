#!/bin/bash

neguinho=$(echo $1 | cut -d. -f1)
useradd $neguinho -p $(openssl passwd '123') -d /var/www/$1

adduser $neguinho userftp

systemctl restart proftpd
