#!/bin/bash

if [ "$UID" -ne "0" ]
then
    echo "You must be root to run this script!"
    exit
fi


apt-get update
apt-get install -y python-pip python-dev

pip install gunicorn flask



cp systemd.service /etc/systemd/system/johnhammond.service

systemctl daemon-reload
systemctl enable johnhammond.service