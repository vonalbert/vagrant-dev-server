#!/bin/bash

# ------------------------------------------------------------------------------
# Configure services as vagrant user

function setup {
    bash /vagrant/provision/$1/setup.sh
}

setup nodejs
