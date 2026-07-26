pipeline {
    agent any

    environment {
        APP_NAME = "devops-demo-app"
        IMAGE_TAG = "v1"
    }

    stages {

        stage('Checkout Source') {
            steps {
                checkout scm
            }
        }

        stage('Verify Docker') {
            steps {
                sh 'docker --version'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t ${APP_NAME}:${IMAGE_TAG} ./app'
            }
        }

        stage('List Docker Images') {
            steps {
                sh 'docker images'
            }
        }
    }

    post {
        success {
            echo 'Docker image built successfully!'
        }

        failure {
            echo 'Pipeline failed.'
        }
    }
}