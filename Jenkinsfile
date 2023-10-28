pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build and Publish Docker Images') {
            steps {
                script {
                    def dockerImageWeb = "musketeers32111/ca4:web"
                    def dockerImageDatabase = "musketeers32111/mydb-postgres:latest"

                    // Build and publish the database image
                    sh "docker build -t ${dockerImageDatabase} -f Dockerfile-database ."
                    sh "docker push ${dockerImageDatabase}"

                    // Build and publish the web server image
                    sh "docker build -t ${dockerImageWeb} -f Dockerfile-web ."
                    sh "docker push ${dockerImageWeb}"
                }
            }
        }
    }
}
