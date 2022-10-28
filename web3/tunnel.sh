#!/bin/bash
echo "Running docker-compose"
cd /rrr/synced/web3
docker-compose up -d
sleep 5 
echo "Building ssh tunnel"
autossh -TNi ../id_rsa -o "StrictHostKeyChecking no" -R 11103:localhost:8083 codecool@3.74.231.211 &
