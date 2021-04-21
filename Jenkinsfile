pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                node{
                    docker.image('postgres')
                }
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}