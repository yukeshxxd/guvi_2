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
                withEnv(['PATH+DOCKER=-rw-r--r--  1 adithyan  staff  260 Feb  5 10:04 Dockerfile']) {
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
