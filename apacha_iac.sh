#!/bin/bash
echo "Updating server, please, wait..."

sudo apt-get update
sudo apt-get -y upgrade

echo "Server updated"
echo "---------------------"

echo "Installing apache web server"

sudo apt-get install -y apache2

echo "Apache2 installed"
echo "---------------------"

echo "Installing unzip"

sudo apt-get install -y unzip

echo "Verifying unzip"

zip -v

echo "Unzip installed"
echo "---------------------"

echo "Downloading site... wait"

wget -P /tmp https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
tail -f wget-log

echo "Finished..."
echo "----------------------"

echo "Unziping file"

unzip /tmp/main.zip -d /var/www/html/

echo "Finished..."