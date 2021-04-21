pipeline{
        agent {
            docker {
                label 'docker'
                image 'node'
            }
        }
        stages{
            stage('setup db'){
                steps{
                    sh 'ls'
                }
            }
        }
    }