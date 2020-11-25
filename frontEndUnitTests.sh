#!/bin/bash
echo line 1
docker build -f frontEnd/Dockerfile -t appfrontend:miniproject .

echo line 2
docker run -d --name frontendunittests appfrontend:miniproject 

echo line 3
docker exec -it frontendunittests bash -c "pytest"

echo line 4
docker stop frontendunittests
echo line 5
docker rm frontendunittests
echo line 6
docker rmi appfrontend:miniproject