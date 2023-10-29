pipeline {
    agent any
    environment {
        GITHUB_TOKEN = credentials('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')
    }

    stages {
        stage('Checkout') {
            steps {
                // Checkout code from the repository
                script {
                    checkout scm
                }
            }
        }

        stage('Build and Push Database Image') {
            steps {
                // Use Docker to build and push the database image
                script {
                    docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
                        // Check if the database image already exists
                        def imageExists = docker.image('musketeers32111/mydb-postgres:latest').exists()

                        if (!imageExists) {
                            // Build and push the database image
                            docker.build('musketeers32111/mydb-postgres:latest', '-f DatabaseService/Dockerfile .')
                            docker.image('musketeers32111/mydb-postgres:latest').push()
                        } else {
                            echo 'Database image already exists. Skipping build.'
                        }
                    }
                }
            }
        }
    }
}
