node{

	stage('SCM'){
		checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/Rshr/simple-node-js-react-npm-app.git']]])
	}
	stage('Build Web App Dependency'){
     
		try{
            nodejs('node') {
                sh 'npm install'
            }

		
		}finally{
		sh 'echo dependencies have been built'
		}
	}
	stage('Test'){
		sh './jenkins/scripts/test.sh'
	}
    stage('Build'){
        sh 'npm run build'
    }
	stage('Package'){
		echo 'Zip it up'
	}
	stage('Deploy'){
		echo 'Push to deployment'
	}
}