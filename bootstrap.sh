#!/bin/bash

CRAWLER_INSTANCE=1
SCHEDULER_INSTANCE=1
PERSISTER_INSTANCE=1
API_INSTANCE=1

docker-compose up --build --scale crawler=$CRAWLER_INSTANCE \
                          --scale scheduler=$SCHEDULER_INSTANCE \
                          --scale persister=$PERSISTER_INSTANCE \
                          --scale api=$API_INSTANCE