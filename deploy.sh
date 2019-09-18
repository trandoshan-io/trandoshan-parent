#!/bin/bash

CRAWLER_INSTANCE=1
SCHEDULER_INSTANCE=1
PERSISTER_INSTANCE=1

# first of all build all projects
# todo change the way of collecting projects
while read -r project; do
  if test ! -d "../${project}"; then
    echo "Project ${project} does not exist locally!"
  else
    echo "Building ${project}"
    docker build "../${project}" -t "trandoshan-io/${project}"
  fi
done <"projects.txt"

# then bring up using docker-compose
docker-compose up --build --scale crawler=$CRAWLER_INSTANCE \
                          --scale scheduler=$SCHEDULER_INSTANCE \
                          --scale persister=$PERSISTER_INSTANCE
