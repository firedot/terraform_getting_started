#!/usr/bin/bash

sudo touch /etc/apt/sources.list.d/pgdg.list
sleep 10
sudo echo 'deb http://apt.postgresql.org/pub/repos/apt/ xenial-pgdg main' >> /etc/apt/sources.list.d/pgdg.list
sleep 10
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sleep 10
sudo apt update
sleep 10
sudo rm -rf /var/lib/dpkg/lock
sleep 10
sudo apt-get install postgresql-9.6 -y
