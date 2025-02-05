#!/bin/bash
set -e  # Stop script on error

# Check if Docker is installed
if ! command -v docker &> /dev/null; then
    echo "⚠️ ERROR: Docker is not installed or not accessible!"
    exit 1
fi

echo "✅ Docker is installed, proceeding..."
echo hi123
    sh 'chmod +x build.sh'
    sh './build.sh'
    docker login -u yukeshh -p 9095859072
    docker tag test yukeshh/docker_jenkins_task2
    docker push yukeshh/docker_jenkins_task2
