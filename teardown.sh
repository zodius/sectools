#! /bin/bash

docker compose -f ./traefik/docker-compose.yml down
docker compose -f ./ip.echo/docker-compose.yml down