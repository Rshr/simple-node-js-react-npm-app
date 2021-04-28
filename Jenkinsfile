pipeline{
        agent {
            docker {
                image 'node:alpine:3.11'
                args '-p 3000:3000'
            }
        }
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