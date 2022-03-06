#!/bin/bash

echo "----- Running production script -----"    
cd /home/domain.com
docker image prune -f --filter 'until=1s'
docker network create nginx-proxy

docker-compose -f docker-compose.production.yml up --build -d