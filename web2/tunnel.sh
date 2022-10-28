#!/bin/bash
echo "Running docker-compose"
cd /rrr/synced/web2
docker-compose up -d
sleep 5 
echo "Building ssh tunnel"
autossh -TNi ../id_rsa -o "StrictHostKeyChecking no" -R 11102:localhost:8082 codecool@3.74.231.211 &
