#!/bin/bash
docker build -f frontEnd/Dockerfile -t thomashennessy/appfrontend:miniproject frontEnd/
docker build -f backEnd/Dockerfile -t thomashennessy/appbackend:miniproject backEnd/