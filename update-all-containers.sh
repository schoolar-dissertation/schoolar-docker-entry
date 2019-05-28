#!/usr/bin/env bash

cd ~/schoolar/nginx
docker-compose up --force-recreate --build -d
docker image prune -f
cd ~/schoolar/schedule
docker-compose up --force-recreate --build -d
docker image prune -f
cd ~/schoolar/live_qa
docker-compose up --force-recreate --build -d
docker image prune -f
cd ~/schoolar/quiz
docker-compose up --force-recreate --build -d
docker image prune -f
cd ~/schoolar/notification
docker-compose up --force-recreate --build -d
docker image prune -f