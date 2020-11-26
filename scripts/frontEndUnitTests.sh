#!/bin/bash
docker build -f ./frontEnd/Dockerfile -t thomashennessy/appfrontend:miniproject ./frontEnd
docker run -d --name frontendunittests thomashennessy/appfrontend:miniproject 
docker exec frontendunittests bash -c "pytest"
docker stop frontendunittests
docker rm frontendunittests
docker rmi thomashennessy/appfrontend:miniproject