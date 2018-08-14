#!/bin/bash

if [ "$UID" -ne "0" ]
then
    echo "You must be root to run this script!"
    exit
fi


apt-get update
apt-get install -y python-pip python-dev

pip install gunicorn flask

cp upstart_init.conf /etc/init/johnhammond.conf

start johnhammond