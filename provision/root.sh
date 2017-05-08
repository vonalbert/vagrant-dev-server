#!/bin/bash

# ------------------------------------------------------------------------------
# Configure services as root user

function setup {
    bash /vagrant/provision/$1/setup.sh
}

setup common
setup apache-php
setup composer
setup mysql
setup postgresql
