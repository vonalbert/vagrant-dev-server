#!/bin/bash

user=web
passwd=password

# ---------------------------------------------------
# Install pgsql and create base user
# ---------------------------------------------------

sudo apt-get install -y postgresql postgresql-client postgresql-contrib libpq-dev > /dev/null
sudo -u postgres psql -c "CREATE USER $user WITH PASSWORD '$passwd';" > /dev/null 2>&1
sudo -u postgres psql -c "ALTER USER $user CREATEDB;"

echo "--- PostgreSQL installed and $user user created with password: $passwd ---"
