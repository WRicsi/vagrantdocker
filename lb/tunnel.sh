#!/bin/bash
cd /rrr/synced/lb
docker-compose up -d 
sleep 5
echo "Building ssh tunnel"
autossh -TNi ../id_rsa -o "StrictHostKeyChecking no" -R 11000:localhost:80 codecool@3.74.231.211 &
