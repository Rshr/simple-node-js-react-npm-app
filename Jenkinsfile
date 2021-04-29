pipeline{
        agent {
            docker {
                alwaysPull true
                customWorkspace '/var/jenkins_home'
                image 'library/node:latest'
                label 'node'
                reuseNode true
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