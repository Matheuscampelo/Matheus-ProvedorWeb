#!/bin/bash

site=$1

touch /etc/apache2/sites-available/$site.conf
mkdir /var/www/$site
touch /var/www/$site/index.html

echo " 
	<VirtualHost *:80>
	ServerName www.$site.com.br
       DocumentRoot /var/www/$site
	</VirtualHost> 
	
"  >> /etc/apache2/sites-available/$site.conf 


a2ensite $site.conf

echo "
	<html>
	<body bgcolor=white>

	<font face=\"Arial\" size=40 color=red >  </br>
	Site em construcao </br>
	
	</font>
	</br>
	</body>
	</html> 
	
" >> /var/www/$site/index.html

systemctl reload apache2

sleep 1 

systemctl reload apache2

sleep 1

a2ensite $site.conf 


