#!/bin/bash

if [[ ! -e  ~/.nvm ]]; then
    curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash > /dev/null 2>&1

    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
fi

nvm install 6 > /dev/null 2>&1
nvm use 6 > /dev/null 2>&1
npm install --global gulp-cli > /dev/null 2>&1
