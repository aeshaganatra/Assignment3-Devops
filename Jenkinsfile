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
                bat 'echo %DOCKERHUB_CREDENTIALS_PSW% ^| docker login -u %DOCKERHUB_CREDENTIALS_USR% --password-stdin docker.io'
            }
        }
        stage('Tag') {
            steps {
                bat 'docker tag demo_image aeshaganatra4199/dockerhub:demo_image'
            }
        }
        stage('Push') {
            steps {
                bat 'docker push aeshaganatra4199/dockerhub:demo_image'
            }
        }
    }
    post {
        always {
            bat 'docker logout'
           }
     }
}
