node{

	stage('SCM'){
		checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/Rshr/simple-node-js-react-npm-app.git']]])
	}
	stage('Build Web App Dependency'){
     
		try{
		sh 'npm install'
		}finally{
		sh 'echo dependencies have been built'
		}
	}
	stage('Test'){
		echo 'Execute unit tests'
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