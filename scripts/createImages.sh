#!/bin/bash
docker build -f ../frontEnd/Dockerfile -t appfrontend:miniproject ../frontEnd
docker build -f ../backEnd/Dockerfile -t appbackend:miniproject ../backEnd