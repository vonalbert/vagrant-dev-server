#!/bin/bash

# ---------------------------------------------------
# Project dependant configuration
# ---------------------------------------------------

# Login as www-data user
sudo su www-data

# Move to project dir
cd /project

# Run project dependant config script
# (composer install, create databases, run migrations, etc...)
composer install -q
bin/console doctrine:database:create -q --if-not-exists

echo "--- Project configuration completed ---"
