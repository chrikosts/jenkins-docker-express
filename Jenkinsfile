peline {
    agent {label "windows"}
    stages {
        stage('Build') {
            steps {
                echo 'Building image...'
                bat 'docker build -t chrikosts/hello:v1.0 .'
            }
        }

        stage('Run') {
            steps {
                echo 'Running docker container...'
                // Run the Docker container
                bat 'docker container run -d --name hello -p 8000:3000 chrikosts/hello:v1.0'
            }
        }
    }
}

