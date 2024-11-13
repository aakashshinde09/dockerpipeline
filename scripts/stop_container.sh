#!/bin/bash
set -e

echo "stopping containers"

docker container rm myapp -f

docker rmi 010928179293.dkr.ecr.us-east-1.amazonaws.com/dockerapp:latest