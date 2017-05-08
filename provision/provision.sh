#!/bin/bash


function setup {
    /bin/bash /vagrant/provision/$1/setup.sh
}

setup common
setup apache-php
setup composer
setup mysql
setup postgresql

#sudo common/setup.sh
#sudo apache-php/setup.sh
#sudo composer/setup.sh
#sudo mysql/setup.sh
#sudo postgresql/setup.sh
