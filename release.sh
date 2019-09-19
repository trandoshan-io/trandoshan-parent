#!/bin/bash

# create a release from a project
# by creating a git tag and building a docker image
#
# usage: ./release.sh <project> <tag>
#
# where project is the name of the project to release
# and tag is the version to use when creating the git tag / the docker image
#

# validate arg count
if [ "$#" -ne 2 ]; then
  echo "Correct usage: ./release.sh <project> <tag>"
  exit
fi

# go to the project
cd ../"$1" || (echo "Project: $1 does not exist !" && exit)

# create the docker image
docker build . -t "trandoshanio/$1:$2"

# create the git tag
git tag "$2"

echo "Project $1 v$2 is ready for release."
