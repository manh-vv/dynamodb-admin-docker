#!/usr/bin/env bash

docker-compose up --build
docker-compose down -v -t 0 --rmi local
