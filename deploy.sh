#!/bin/bash

echo "hi123"

# Exit script on any error
set -e

# Ensure build.sh is executable
chmod +x build.sh

# Run build script
./build.sh

# Securely log in to Docker
echo "Logging into Docker..."
echo "9095859072" | docker login -u "yukeshh" --password-stdin

# Tag Docker image
docker tag test yukeshh/docker_jenkins_task2

# Push Docker image
docker push yukeshh/docker_jenkins_task2

echo "Docker image pushed successfully!"
