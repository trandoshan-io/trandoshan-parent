#!/bin/bash

while read -r project; do
  if test -d "../${project}"; then
    echo "##### ${project} #####"
    echo "$@" | xargs git -C ../"${project}"
    echo ""
  fi
done <"projects.txt"
