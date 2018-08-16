#!/bin/bash

if [ "$UID" -ne "0" ]
then
    echo "You must be root to run this script!"
    exit
fi

sudo apt-get update
sudo apt-get install -y software-properties-common
echo "" | sudo add-apt-repository ppa:certbot/certbot
sudo apt-get update
sudo apt-get install -y python-certbot-nginx 

printf "johnhammond010@gmail.com\nA\nN\njohnhammond.org,www.johnhammond.org\n2" | sudo certbot --nginx

sudo ufw allow