#!/bin/bash
docker build -f ./frontEnd/Dockerfile -t thomashennessy/appfrontend:miniproject ./frontEnd
docker build -f ./backEnd/Dockerfile -t thomashennessy/appbackend:miniproject ./backEnd
docker push thomashennessy/appfrontend:miniproject
docker push thomashennessy/appbackend:miniproject
docker stack deploy --compose-file docker-compose.yaml animal-app