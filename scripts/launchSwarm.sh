#!/bin/bash
docker build -f ./frontEnd/Dockerfile -t appfrontend:miniproject ./frontEnd
docker build -f ./backEnd/Dockerfile -t appbackend:miniproject ./backEnd
docker stack deploy --compose-file docker-compose.yaml animal-app