pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                bat 'mvn clean package'
            }
        }
        stage('Deploy') {
            steps {
                bat 'start C:\\Program Files\\Java\\jdk-17\\bin\\java.exe -jar target/demo.jar'
            }
        }
    }
}
