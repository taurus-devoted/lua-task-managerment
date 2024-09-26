#!/bin/bash

IMAGE_NAME="lua-task-manager"

echo "Building Docker image..."
docker build -t $IMAGE_NAME .
echo "Running Docker container..."
docker run --rm -it $IMAGE_NAME
