pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/Elnathan-Y/C270_Week12_Demo.git'
            }
        }
        stage('Build') {
            steps {
                sh 'echo "Building the application..."'
            }
        }
        stage('Test') {
            steps {
                sh 'echo "Running tests..."'
            }
        }
        stage('Deploy') {
            steps {
                sh 'echo "Deploying the application..."'
            }
        }
    }
}

