#!/bin/bash
cd /rrr/synced/db #to make innit.sh work
docker-compose up -d 
echo 'Building database.'
sleep 45
echo 'Building tunnel.'
autossh -TNi ../id_rsa -o "StrictHostKeyChecking no" -R 11201:localhost:5432 codecool@3.74.231.211 &
#                                   ^- not to ask for "yes" during install                         ^- makes it backgound with bash magic
