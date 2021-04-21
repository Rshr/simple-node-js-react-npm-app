pipeline{
        agent {
            docker {
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