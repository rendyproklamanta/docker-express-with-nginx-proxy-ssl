#!/bin/bash

source pre-deploy.sh

echo "----- Deploy local docker -----"

cd ..
docker-compose -f docker-compose.local.yml up --build -d

cd deploy
source post-deploy.sh