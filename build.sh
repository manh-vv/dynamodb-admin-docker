#!/usr/bin/env bash

docker build -t manhvu2507/dynamodb-admin-docker .

# docker push manhvu2507/dynamodb-admin-docker

docker-compose up

docker-compose down -v -t 0 --rmi local
