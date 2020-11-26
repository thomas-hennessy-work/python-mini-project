#!/bin/bash
bash ./createImages.sh
docker stack deploy --compose-file ../docker-compose.yaml animal-app