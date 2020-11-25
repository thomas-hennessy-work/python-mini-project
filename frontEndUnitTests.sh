#!/bin/bash
docker build -f frontEnd/Dockerfile -t appfrontend:miniproject .
docker run -d --name frontendunittests appfrontend:miniproject 
docker exec -it frontendunittests bash -c "pytest"
docker stop frontendunittests
docker rm frontendunittests
docker rmi appfrontend:miniproject