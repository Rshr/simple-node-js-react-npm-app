pipeline{
        agent any
        environment {
            CI = 'true'
        }
        stages{
            stage('install dependencies'){
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