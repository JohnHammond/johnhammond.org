#!/bin/bash

cd /home/john/johnhammond.org
nohup gunicorn --workers 4 flask_server:app
