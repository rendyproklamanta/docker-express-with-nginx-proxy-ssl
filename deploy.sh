#!/bin/bash

echo "----- Running deploy script -----"    
cd /home/web.com
docker image prune -f --filter 'until=1s'
docker network create nginx-proxy
docker-compose up --build -d