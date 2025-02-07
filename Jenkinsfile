pipeline {
    agent any
    environment {
        PATH = "/usr/local/bin:${env.PATH}"  // Ensure the path to Docker is in the PATH
    }
    stages {
        stage('Checkout SCM') {
            steps {
                checkout scm
            }
        }
        stage('Build and Push Docker Image') {
            steps {
                script {
                    // Use full path to Docker
                    sh '/usr/local/bin/docker --version'

                    // Grant execute permission to the scripts
                    sh 'chmod +x deploy.sh build.sh'

                    // Run the deploy script
                    sh './deploy.sh'
                }
            }
        }
    }
}
