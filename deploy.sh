echo hi123
    sh 'chmod +x build.sh'
    sh './build.sh'
    docker login -u yukeshh -p 9095859072
    docker tag test yukeshh/docker_jenkins_task2
    docker push yukeshh/docker_jenkins_task2
