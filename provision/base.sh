#!/usr/bin/env bash

# install dependencies
sudo apt-get update
sudo apt-get install -y build-essential git-core

# install node via nvm -  https://github.com/creationix/nvm
echo "Installing nvm..."
curl https://raw.githubusercontent.com/creationix/nvm/v0.25.4/install.sh | bash

echo "source /home/vagrant/.nvm/nvm.sh" >> /home/vagrant/.profile
source /home/vagrant/.profile

nvm install v5.2.0
nvm alias default v5.2.0

# install global npm packages

npm i -g grunt grunt-cli bower
