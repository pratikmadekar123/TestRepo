pipeline {
    agent any

    environment {
        IMAGE_NAME = 'test-app'
        DOCKER_HUB_CREDENTIALS = credentials('docker-hub-creds')  // Create this in Jenkins
    }

    stages {
        stage('Checkout') {
            steps {
                git credentialsId: 'git-credentials', url: 'https://github.com/pratikmadekar123/TestRepo.git', branch: 'main'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    sh "docker build -t $IMAGE_NAME ."
                }
            }
        }

        stage('Login to Docker Hub') {
            steps {
                script {
                    sh "echo ${DOCKER_HUB_CREDENTIALS_PSW} | docker login -u ${DOCKER_HUB_CREDENTIALS_USR} --password-stdin"
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                script {
                    sh "docker tag $IMAGE_NAME your-dockerhub-username/$IMAGE_NAME:latest"
                    sh "docker push your-dockerhub-username/$IMAGE_NAME:latest"
                }
            }
        }

        stage('Deploy (Optional)') {
            steps {
                echo "Deployment logic can be added here..."
            }
        }
    }
}
