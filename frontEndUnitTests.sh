#!/bin/bash
bash ./createImages.sh
docker run -d --name frontendunittests appfrontend:miniproject

docker exec -it frontendunittests bash pytest

docker stop frontendunittests
docker rm frontendunittests
docker rmi frontendunittests