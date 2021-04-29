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
            sh 'set -x'
            sh 'npm run test'
            sh 'set +x'
            }
        }
        stage('Build'){
            steps{
                echo 'Building Web Application'
                sh 'set -x'
                sh 'npm run build'
                sh 'set +x'
            }
        }
        stage('Pre-flight'){
            steps{
                echo 'serve up the build '
                sh 'set -x'
                sh' npm run serve &'
                sh' sleep 1'
                sh' echo $! > .pidfile'
                sh' set +x'
                sh' set -x'
                sh 'kill $(cat .pidfile)'
            }
        }
        stage('Deploy'){
            steps{
                echo 'ssh build folder to deploy server and issue rerun command.'
            }
        }
    }
}