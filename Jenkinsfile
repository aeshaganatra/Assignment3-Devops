pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                bat 'D:\\download\\apache-maven-3.9.1-bin\\apache-maven-3.9.1\\bin\\mvn clean package'
            }
        }
        stage('Deploy') {
            steps {
                bat 'D:\\download\\apache-maven-3.9.1-bin\\apache-maven-3.9.1\\bin\\mvn clean install'
            }
        }
    }
}
