pipeline {
    agent none 
    stages {
        stage('Install Dependencies') {
            agent { docker 'node:latest' } 
            steps {
                echo 'Hello, Node'
                sh 'npm install'
            }
        }
    }
}