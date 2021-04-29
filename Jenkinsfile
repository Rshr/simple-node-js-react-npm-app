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
      try{
         stage('Test'){

         env.NODE_ENV = "test"

         print "Environment will be : ${env.NODE_ENV}"

         sh 'node -v'
         sh 'npm prune'
         sh 'npm install'
         sh 'npm test'

       }

       stage('Build Docker'){

            sh 'build webserver frim docker image.'
       }

       stage('Deploy'){

         echo 'Push to Repo'
         

         echo 'ssh to web server and tell it to pull new image'
  

       }

       stage('Cleanup'){

         echo 'prune and cleanup'
         sh 'npm prune'
         sh 'rm node_modules -rf'

         
       }



    }
    catch (err) {

        currentBuild.result = "FAILURE"


        throw err
    }
}