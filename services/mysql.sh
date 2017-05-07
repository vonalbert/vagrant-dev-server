#!/bin/bash

user=web
passwd=password

# ---------------------------------------------------
# Install mysql
# ---------------------------------------------------

sudo debconf-set-selections <<< "mysql-server mysql-server/root_password password $passwd"
sudo debconf-set-selections <<< "mysql-server mysql-server/root_password_again password $passwd"
sudo apt-get -y install mysql-server > /dev/null
echo "--- MySQL Database installed ---"

# ---------------------------------------------------
# Create mysql user
# ---------------------------------------------------

mysql -uroot -p$passwd -e "grant all privileges on *.* to '$user'@'localhost' identified by '$passwd';" > /dev/null 2>&1
mysql -uroot -p$passwd -e "FLUSH PRIVILEGES;" > /dev/null 2>&1
echo "--- MySQL user created: $user - password: $passwd ---"
