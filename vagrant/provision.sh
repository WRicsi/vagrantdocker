#!/bin/bash
#Docker
apt-get update
curl -fsSL https://get.docker.com/ | sh
usermod -aG docker vagrant
#Docker-Compose + autossh
apt-get install -y docker-compose
apt-get install -y autossh
#Permission shenanigans
mkdir /rrr
cp -r /home/vagrant/synced /rrr
chmod 400 /rrr/synced/id_rsa
chown -R vagrant /rrr
#Putting innit to home
cp /home/vagrant/synced/vagrant/innit.sh /home/vagrant/innit.sh
