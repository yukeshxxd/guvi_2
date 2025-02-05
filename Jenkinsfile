pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/yukeshxxd/guvi_2'
            }
        }

        stage('Build and Push Docker Image') {
            steps {
                withEnv(['PATH=/usr/local/bin:$PATH']) {
                    sh 'docker --version'  // Check if Docker is accessible
                    sh 'chmod +x deploy.sh' // Ensure deploy.sh is executable
                    sh './deploy.sh'  // Run deployment script
                }
            }
        }
    }
}
