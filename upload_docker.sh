#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=diawa/sklearn

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login -u diawa -p "Megusta@94"
docker image tag sklearn:latest $dockerpath

# Step 3:
# Push image to a docker repository
docker push $dockerpath:latest