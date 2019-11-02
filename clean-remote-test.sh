#!/bin/bash
echo 'Stopping  containers...'
docker-compose -f network/fabric-v1.4.1/raft/docker-compose-tls.yaml down

echo 'Stop extra  containers...'
(test -z \"$(docker ps -aq)\") || docker rm $(docker ps -aq)

echo 'Remove extra images...'
(test -z \"$(docker images dev* -q)\") || docker rmi $(docker images dev* -q)

echo  'Clean hfc suites...'
rm -rf /tmp/hfc-*

echo 'Clean peer datas...'
rm -r network/fabric-v1.4.1/raft/data/*

docker network  prune
docker volume  prune
~                      
