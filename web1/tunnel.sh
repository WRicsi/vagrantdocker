#!/bin/bash
echo "Running docker-compose"
cd /rrr/synced/web1
docker-compose up -d
sleep 5
echo "Building ssh tunnel"
autossh -TNi ../id_rsa -o "StrictHostKeyChecking no" -R 11101:localhost:8081 codecool@3.74.231.211 &
