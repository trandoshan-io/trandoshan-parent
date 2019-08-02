#!/bin/bash

# first of all build all projects
while read -r project; do
  if test ! -d "../${project}"; then
    echo "Project ${project} does not exist locally!"
  else
    echo "Building ${project}"
    docker build "../${project}" -t "trandoshan-io/${project}"
  fi
done <"projects.txt"

# then bring up using docker-compose
docker-compose up --build --scale crawler=2
