pipeline {
    agent none
    stages {
        stage('back-end'){
            agent {
                docker { label 'docker' }
            }
        }
        stage('Test') {
            steps {
                sh 'node --version'
            }
        }
    }
}