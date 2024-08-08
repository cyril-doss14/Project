pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                checkout scmGit(branches: [[name: '*/master'], [name: '*/dev']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/cyril-doss14/Project.git']])
            }
        }
    }

        stage('Build') {
            steps {
                script {
                    sh './build.sh'  // Build Docker image using build.sh
                }
            }
        }

        stage('Deploy') {
            steps {
                withCredentials([usernamePassword(credentialsId: "${DOCKER_CREDENTIALS_ID}", passwordVariable: 'DOCKER_PASSWORD', usernameVariable: 'DOCKER_USERNAME')]) {
                    script {
                        sh "echo \$DOCKER_PASSWORD | docker login -u \$DOCKER_USERNAME --password-stdin docker.io"
                        sh './deploy.sh'  // Deploy the Docker image using deploy.sh
                    }
                }
            }
        }
    }
}
