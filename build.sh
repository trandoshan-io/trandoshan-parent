#!/bin/bash

while read -r project; do
  if test ! -d "../${project}"; then
    echo "Project ${project} does not exist locally!"
  else
    echo "Building ${project}"
    docker build "../${project}" -t "trandoshanio/${project}:latest"
  fi
done <"projects.txt"