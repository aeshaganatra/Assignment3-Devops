pipeline {
    agent any
    
    environment {
        DOCKERHUB_CREDENTIALS = credentials('dockerhub')
    }
    
    stages {
        stage('Build') {
            steps {
                bat 'D:\\download\\apache-maven-3.9.1-bin\\apache-maven-3.9.1\\bin\\mvn clean package'
            }
        }
        stage('Docker build') {
            steps {
                bat 'docker build -f Dockerfile -t demo_image .'
            }
        }
        stage('Login') {
            steps {
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
            }
        }
        stage('Push') {
            steps {
                bat 'docker push demo_image'
            }
        }
    }
}
