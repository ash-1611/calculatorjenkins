pipeline {
    agent any

    stages {

        stage('Verify Files') {
            steps {
                sh 'ls -l'
            }
        }

        stage('Deploy') {
            steps {
                sh '''
                echo "Deploying Calculator App..."
                '''
            }
        }
    }

    post {
        success {
            echo 'Deployment successful!'
        }
        failure {
            echo 'Deployment failed!'
        }
    }
}
