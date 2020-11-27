#!/bin/bash
docker build -f ./testing/Dockerfile -t thomashennessy/appunittest:miniproject .
docker run -it -d --name frontendunittests thomashennessy/appunittest:miniproject
docker exec frontendunittests pytest ./frontEnd --cov ./frontEnd