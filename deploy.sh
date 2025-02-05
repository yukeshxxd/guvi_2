#!/bin/bash

echo "hi123"

# Ensure script exits on errors
set -e

# Make build.sh executable
chmod +x build.sh

# Run build script
./build.sh

# Log in to Docker securely
echo "Logging into Docker..."
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

# Tag Docker image
docker tag test "$DOCKER_USERNAME/docker_jenkins_task2"

# Push Docker image
docker push "$DOCKER_USERNAME/docker_jenkins_task2"

echo "Docker image pushed successfully!"
