#! /bin/bash

docker compose -f ./traefik/docker-compose.yml --env-file .env down
docker compose -f ./ip.echo/docker-compose.yml --env-file .env down
docker compose -f ./static/docker-compose.yml --env-file .env down
docker compose -f ./penta/docker-compose.yml --env-file .env down