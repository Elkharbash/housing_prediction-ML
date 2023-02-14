#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=nabel218/housing_app

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username=nabel218 --password=**********
docker tag housing_app:latest ${dockerpath}:latest

# Step 3:
# Push image to a docker repository
docker push $dockerpath