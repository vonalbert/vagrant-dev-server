#!/bin/bash

# ---------------------------------------------------
# Update packages
# ---------------------------------------------------

sudo apt-get update -mqq > /dev/null
sudo apt-get upgrade -yqq > /dev/null

sudo apt-get install -y \
 curl \
 git \
 python-software-properties \
 python \
 g++ \
 make \
> /dev/null

echo "--- APT packages updated ---"


# ---------------------------------------------------
# Setup www dir
# ---------------------------------------------------

ln -sf /var/www/project /
echo "--- Project directory is now linked to root ---"
