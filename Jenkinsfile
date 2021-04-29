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
            sh './jenkins/scripts/test.sh'
            }
        }
        stage('Build'){
            steps{
                echo 'Building Web Application'
                sh './jenkins/scripts/build.sh'
            }
        }
        stage('Pre-flight'){
            steps{
                echo 'serve up the build '
                sh'./jenkins/scripts/preflight.sh'
                sh'./jenkins/scripts/kill.sh'
            }
        }
        stage('Deploy'){
            steps{
                echo 'ssh build folder to deploy server and issue rerun command.'
            }
        }
    }
}