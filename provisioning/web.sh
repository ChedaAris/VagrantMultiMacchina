#Setup parte web

#!/bin/bash

#installs apache
apt-get install apache2 -y

#install php
apt-get install --no-install-recommends php8.1 -y

#install dependecies for adminer
apt-get install php-pdo-mysql -y

#reload apche to apply new extesniosn
systemctl restart apache2
