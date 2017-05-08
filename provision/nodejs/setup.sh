#!/bin/bash

# https://github.com/creationix/nvm
if [[ ! -e  /.nvm ]]; then
 curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash

 # Reload bash file to make nvm available
 source /.bashrc
 # source /.nvm/nvm.sh

 nvm install 6
 nvm use 6
fi

npm install --global gulp-cli
