pipeline {
    agent any
    stages{
        stage('Podman Build'){
            steps{
                sh """
                #!/bin/sh -x
                Podman build -t Dockerfile
                """
            }
        }
    }
}
