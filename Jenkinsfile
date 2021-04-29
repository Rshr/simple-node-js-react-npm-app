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
            sh './test.sh'
            }
        }
        stage('Build'){
            steps{
                echo 'Building Web Application'
                sh './build.sh'
            }
        }
        stage('Pre-flight'){
            steps{
                echo 'serve up the build '
                sh'./preflight.sh'
                sh'./kill.sh'
            }
        }
        stage('Deploy'){
            steps{
                echo 'ssh build folder to deploy server and issue rerun command.'
            }
        }
    }
}