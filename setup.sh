#!/bin/bash

# build & install mysql
makepkg -si --skippgpcheck
# setup dummy database
sudo rm -rf /var/lib/mysql
sudo mysqld --initialize --user=mysql --basedir=/usr --datadir=/var/lib/mysql
# enable mysql service
sudo systemctl enable --now mysqld
