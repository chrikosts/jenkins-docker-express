pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'Building image...'
                sh 'docker build -t chrikosts/hello:v1.0 .'
            }
        }

        stage('Deploy app') {
            steps {
                echo 'Deploying containerized app...'
                // Run the Docker container
                sh 'docker container run -d --name hello -p 8000:3000 chrikosts/hello:v1.0'
            }
        }
    }
}

