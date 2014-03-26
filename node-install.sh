#!/bin/bash
ver="0.10.26"
echo Installing node version $ver
wget http://nodejs.org/dist/v$ver/node-v$ver.tar.gz
tar -zxf node-v$ver.tar.gz
cd node-v$ver
./configure && sudo make && sudo make install
sudo setcap 'cap_net_bind_service=+ep' /usr/local/bin/node
sudo npm i -g coffee-script less grunt-cli phantomjs karma bower bower-installer express coffeelint releasy
