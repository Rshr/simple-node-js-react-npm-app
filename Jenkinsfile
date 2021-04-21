pipeline{
        agent {
            postgres {
                label 'postgresAgent'
                image 'postgres'
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