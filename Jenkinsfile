pipeline {
    agent any

    stages {

        stage('Clone Repository') {
            steps {
                git 'https://github.com/ash-1611/calculatorjenkins.git'
            }
        }

        stage('Verify Files') {
            steps {
                sh 'ls -l'
            }
        }

        stage('Deploy') {
            steps {
                sh '''
                echo "Deploying HTML Calculator App..."
                cp -r * /var/www/html/
                '''
            }
        }
    }

    post {
        success {
            echo 'HTML Calculator App deployed successfully!'
        }
        failure {
            echo 'Deployment failed!'
        }
    }
}
