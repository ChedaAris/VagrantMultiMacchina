#Setup parte database

#!/bin/bash

#installazione dbms
apt-get install mariadb-server -y

#Edit maria db configuration to allow remote connecitons
sed -i 's/127.0.0.1/0.0.0.0/' /etc/mysql/mariadb.conf.d/50-server.cnf

#import setup db e utente
sudo mariadb < "/vagrant/provisioning/mariadb-setup.sql"

#restart mariadb server to apply conf changes
systemctl restart mariadb
