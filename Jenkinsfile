pipeline {
    agent any

    environment {
        PATH = "/usr/local/bin:$PATH"
    }

    stages {
        stage('Checkout') {
            steps {
                script {
                    checkout scm: [
                        $class: 'GitSCM',
                        branches: [[name: '*/main']],
                        userRemoteConfigs: [[url: 'https://github.com/yukeshxxd/guvi_2']]
                    ]
                }
            }
        }

        stage('Build and Push Docker Image') {
            steps {
                script {
                    withEnv(['PATH=/usr/local/bin:$PATH']) {
                        sh 'docker --version || echo "⚠️ Docker not found!"' // Check Docker
                        sh 'chmod +x deploy.sh || echo "⚠️ deploy.sh not found!"' // Ensure deploy.sh is executable
                        sh './deploy.sh || echo "⚠️ deploy.sh failed!"'  // Run deployment script
                    }
                }
            }
        }
    }
}
