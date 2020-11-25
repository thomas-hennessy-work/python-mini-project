#!/bin/bash
docker build -f frontEnd/Dockerfile -t appfrontend:miniproject .
docker build -f backEnd/Dockerfile -t appbackend:miniproject .