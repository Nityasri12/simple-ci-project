pipeline {
    agent any

    stages {
        stage('Clone Repo') {
            steps {
                git 'https://github.com/Nityasri12/simple-ci-project.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    echo '🔧 Building Docker image...'
                    bat 'docker build -t simple-ci-image .'
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    echo '🚀 Running Docker container...'
                    bat 'docker run --rm simple-ci-image'
                }
            }
        }
    }
}
