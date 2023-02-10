#!/bin/bash
# wget https://raw.githubusercontent.com/titouanlacombe/server-setup/master/setup.sh

set -e

sudo apt install -y git curl python3-pip python3 htop

curl https://get.docker.com/ | sudo bash
sudo usermod -aG docker $(whoami)

sudo pip3 install docker-compose makepie

git config --global user.name "Server"
git config --global user.email "server@null.com"

echo "export PATH=$PATH:~/.local/bin" >> ~/.bashrc
echo "export LC_ALL=C.UTF-8" >> ~/.bashrc
