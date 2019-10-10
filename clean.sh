#!/bin/bash
docker rm -f $(docker ps -aq)
docker network  prune  
docker volume  prune  
