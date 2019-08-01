#!/bin/bash

REPO_URL="git@github.com:trandoshan-io/"

while read project; do
   if test ! -d "../${project}"; then
      echo "Cloning new project: ${project}"
      PROJECT_PATH="${REPO_URL}${project}.git"
      git clone $PROJECT_PATH "../${project}" --branch develop
   fi
done <"projects.txt"
