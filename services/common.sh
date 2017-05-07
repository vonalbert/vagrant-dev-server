#!/bin/bash

# ---------------------------------------------------
# Update packages
# ---------------------------------------------------

sudo apt-get update -mqq > /dev/null
sudo apt-get upgrade -yqq > /dev/null

sudo apt-get install -y \
 curl \
 git \
> /dev/null

echo "--- APT packages updated ---"


# ---------------------------------------------------
# Setup www dir
# ---------------------------------------------------

ln -sf /var/www/project /project
echo "--- Project directory is now linked to root ---"
