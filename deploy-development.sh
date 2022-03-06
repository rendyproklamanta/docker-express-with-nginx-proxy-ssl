#!/bin/bash

echo "----- Deploy developoment docker -----"    
cd /home/domain.com
docker image prune -f --filter 'until=1s'
docker network create nginx-proxy

docker-compose up --build -d