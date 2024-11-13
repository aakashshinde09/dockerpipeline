#!/bin/bash
set -e

docker pull 010928179293.dkr.ecr.us-east-1.amazonaws.com/dockerapp:latest

docker run -d -p 80:80 010928179293.dkr.ecr.us-east-1.amazonaws.com/dockerapp:latest