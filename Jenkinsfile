pipeline {
    agent 'any'
    tools {nodejs "node"}
    stages {
        stage('Setup data layer'){
            steps{
                def pgImage = docker.build("postgres:latest")
                pgImage.inside {
                    sh 'docker run -it --rm --network some-network postgres psql -h some-postgres -U postgres'
                }
            }
        }
        stage('Test') {
            steps {
                sh 'node --version'
            }
        }
    }
}