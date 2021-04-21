pipeline{
        agent {
            docker {
                label 'master'
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