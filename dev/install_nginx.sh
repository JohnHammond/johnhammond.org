#!/bin/bash

if [ "$UID" -ne "0" ]
then
    echo "You must be root to run this script!"
    exit
fi


apt-get update
apt-get install -y nginx

systemctl status nginx.service
