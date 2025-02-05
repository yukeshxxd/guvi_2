pipeline {
    agent any

    environment {
        DOCKER_USERNAME = 'yukeshh'
        DOCKER_PASSWORD = '9095859072'
    }

    stages {
        stage('Build and Push Docker Image') {
            steps {
                echo 'hi123'
                
                // Make build.sh executable
                sh 'chmod +x build.sh'
                
                // Run build script
                sh './build.sh'
                
                // Log in to Docker
                sh 'echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin'
                
                // Tag Docker image
                sh 'docker tag test yukeshh/docker_jenkins_task2'
                
                // Push Docker image
                sh 'docker push yukeshh/docker_jenkins_task2'
            }
        }
    }
}
