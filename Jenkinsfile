pipeline{

	agent any

	environment {
		DOCKERHUB_CREDENTIALS=credentials('141a1b59-0bb2-44bc-a5fa-f3bc5e89beee')
	}

	stages {

		stage('Build') {

			steps {
				sh 'docker build -t brightk/brightapp:latest .'
			}
		}

		stage('Login') {

			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		}

		stage('Push') {

			steps {
				sh 'docker push brightk/brightapp:latest'
			}
		}
	}

	post {
		always {
			sh 'docker logout'
		}
	}

}