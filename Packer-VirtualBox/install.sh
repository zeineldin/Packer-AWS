#!/bin/bash
apt-get update
apt-get -y install nginx
sudo cp index.html /var/www/html/
sudo systemctl enable nginx
sudo systemctl start nginx
