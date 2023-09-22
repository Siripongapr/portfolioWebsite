#!/bin/bash

rsync -avz --exclude=node_modules ./* portFolio:/root/portFolio

ssh portFolio << E0F

cd portFolio

docker build -t portfolio_vue3 .

docker compose down

docker compose up -d 

E0F


