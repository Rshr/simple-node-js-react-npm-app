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
        stage('Test'){
            agent { docker 'node:latest' } 
            echo 'Running web App test cases.'
            sh 'npm run test'
        }
        stage('Build'){
            agent { docker 'node:latest' } 
            echo 'Building Web Application'
            sh 'npm run build'
        }
        stage('Pre-flight'){
            agent { docker 'node:latest' } 
            echo 'Building Web Application'
            sh 'npm run build'
        }
        stage('Deploy'){
            echo 'ssh build folder to deploy server and issue rerun command.'
        }
    }
}