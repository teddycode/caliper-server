#!/bin/bash
docker-compose -f network/fabric-v1.4.1/raft/docker-compose-tls.yaml up -d 
echo "Please start benchmark in remote  host"
sleep 3s

