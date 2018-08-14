#!/bin/bash

if [ "$UID" -ne "0" ]
then
    echo "You must be root to run this script!"
    exit
fi

# Create a backup of the original settings...
###### This actually will not work because nginx will test it and see duplicates..
#mv /etc/nginx/sites-enabled/default /etc/nginx/sites-enabled/default.backup

# Copy over our custom
cp -f nginx_sites_enabled_default /etc/nginx/sites-enabled/default

# Test the configuration settings
nginx -t

# Restart the server
service nginx restart
