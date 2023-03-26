pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Deploy') {
            steps {
                bat 'start java -jar target/demo.jar'
            }
        }
    }
}
