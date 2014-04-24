sudo apt-get update
sudo apt-get -y install numlockx build-essential g++ git xclip curl unrar vim
sudo sed -i 's|^exit 0.*$|# Numlock enable\n[ -x /usr/bin/numlockx ] \&\& numlockx on\n\nexit 0|' /etc/rc.local

sudo update-alternatives --config editor
