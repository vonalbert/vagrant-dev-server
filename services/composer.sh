#!/bin/bash

if [[ ! -e /usr/local/bin/composer ]]; then
    curl -sS https://getcomposer.org/installer | php > /dev/null
    mv composer.phar /usr/local/bin/composer > /dev/null
    echo "--- Composer installed ---"
fi
