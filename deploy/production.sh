#!/bin/bash

echo "----- Deploy production docker -----"    

cd ..
docker-compose -f docker-compose.production.yml up --build -d

cd deploy
source post-deploy.sh