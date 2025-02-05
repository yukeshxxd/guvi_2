pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        
        stage('Build and Push Docker Image') {
            steps {
                withEnv(['PATH+DOCKER=/usr/local/bin']) {
                    script {
                        // Run the deploy.sh script with Docker command available
                        sh 'chmod +x deploy.sh'
                        sh './deploy.sh'
                    }
                }
            }
        }
    }
}
