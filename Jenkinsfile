pipeline{

	agent any

	environment {
		DOCKERHUB_CREDENTIALS=credentials('141a1b59-0bb2-44bc-a5fa-f3bc5e89beee')
    SHORT_COMMIT="${GIT_COMMIT[0..7]}"
	}

	stages {

		// stage('Build') {

		// 	steps {
		// 		sh 'docker build -t brightk/brightapp:$SHORT_COMMIT ci-cd-pipeline/.'
		// 	}
		// }

		// stage('Login') {

		// 	steps {
		// 		sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
		// 	}
		// }

		// stage('Push') {

		// 	steps {
		// 		sh 'docker push brightk/brightapp:$SHORT_COMMIT'
		// 	}
		// }

    stage('Deploy') {

			steps {
        // sh 'cat ../values.yaml | sed -i "s/tag: /tag: $SHORT_COMMIT/g" ../values.yaml | helm upgrade nginx . -f ../values.yaml'
        sh('./deployment.sh')
			}
		}
	}

	// post {
	// 	always {
	// 		sh 'docker logout'
	// 	}
	// }

}