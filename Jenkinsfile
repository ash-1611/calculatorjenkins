pipeline {
    agent any

    stages {

        stage('Checkout Code') {
            steps {
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t calculator-app .'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh '''
                docker stop calculator || true
                docker rm calculator || true
                docker run -d -p 8081:80 --name calculator calculator-app
                '''
            }
        }
    }

    post {
        success {
            echo 'Calculator deployed successfully using Docker!'
        }
        failure {
            echo 'Docker deployment failed!'
        }
    }
}
