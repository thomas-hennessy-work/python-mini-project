docker build -f frontEnd/Dockerfile -t appfrontend:miniproject .
docker build -f backEnd/Dockerfile -t appbackend:miniproject .
docker stack deploy --compose-file docker-compose.yaml animal-app