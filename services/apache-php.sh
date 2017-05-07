#!/bin/bash

# ---------------------------------------------------
# PHP installation
# ---------------------------------------------------

sudo apt-get install -y \
 php7.0 \
 php7.0-cli \
 php7.0-curl \
 php7.0-gd \
 php7.0-intl \
 php7.0-mbstring \
 php7.0-phar \
 php7.0-soap \
 php7.0-xml \
 php7.0-zip \
 php7.0-mysql \
 php7.0-pgsql \
 php7.0-sqlite \
> /dev/null

echo "--- PHP installed ---"

# ---------------------------------------------------
# Apache2 install with modphp
# ---------------------------------------------------

sudo apt-get install -y apache2 > /dev/null
sudo apt-get install -y libapache2-mod-php7.0 > /dev/null

cp /vagrant/config/vhost.conf /etc/apache2/sites-available/000-default.conf
cp /vagrant/config/envvars /etc/apache2/envvars

sudo service apache2 restart

echo "--- Apache2 with mod-php installed and configured ---"
