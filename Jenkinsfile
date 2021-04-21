pipeline{
        agent {
            postgres {
                label 'postgresAgent'
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