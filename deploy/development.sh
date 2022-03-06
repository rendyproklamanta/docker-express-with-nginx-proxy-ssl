#!/bin/bash

source pre-deploy.sh

echo "----- Deploy developoment docker -----"    

cd ..
docker-compose up --build -d

cd deploy
source post-deploy.sh