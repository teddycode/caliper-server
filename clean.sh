#!/bin/bash
docker rm -f $(docker ps -aq)
docker network  prune  
docker volume  prune  
(test -z \"$(docker ps -aq)\") || docker rm $(docker ps -aq);(test -z \"$(docker images dev* -q)\") || docker rmi $(docker images dev* -q);rm -rf /tmp/hfc-*
