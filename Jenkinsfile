pipeline {
    agent { docker 'node:latest' } 
    stages {
        stage('Install Dependencies') {
            
            steps {
                echo 'Hello, Node'
                sh 'npm install'
            }
        }
        stage('Test'){
          steps {
            echo 'Running web App test cases.'
            sh 'npm run test'
            }
        }
        stage('Build'){
            steps{
                echo 'Building Web Application'
                sh 'npm run build'
            }
        }
        stage('Pre-flight'){
            steps{
                echo 'serve up the build '
                sh 'npm install -g serve'
                sh 'serve -s build -l 4000'
                sh 'curl -Is http://localhost:4000'
            }
        }
        stage('Deploy'){
            steps{
                echo 'ssh build folder to deploy server and issue rerun command.'
            }
        }
    }
}