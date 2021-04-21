pipeline{
        agent {
            label 'master'
        }
        stages{
            stage('install dependencies'){
                agent {
                    docker{
                         image 'node'
                    }
                }
                steps{
                    sh 'npm install' 
                }
            }
             stage('build'){
                steps{
                    sh 'npm run build' 
                }
            }
        }
    }