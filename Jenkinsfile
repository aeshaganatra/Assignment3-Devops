pipeline {
    agent any
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
        stage('Docker run') {
            steps {
                bat 'docker run -p 8084:8084 -t demo_image'
            }
        }
    }
}
