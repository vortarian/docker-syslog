#!/bin/bash
export VERSION=1.0.0

docker build -t 859716438445.dkr.ecr.us-east-1.amazonaws.com/park-syslog:latest -t 859716438445.dkr.ecr.us-east-1.amazonaws.com/park-syslog:$VERSION . 
docker push 859716438445.dkr.ecr.us-east-1.amazonaws.com/park-syslog
