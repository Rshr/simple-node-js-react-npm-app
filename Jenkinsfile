node {
    checkout scm

}
pipeline{
        agent {
            docker {image 'postgres:latest'}
        }
        stages{
            stage('setup db'){
                steps{
                    sh 'ls'
                }
            }
        }
    }