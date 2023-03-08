pipeline {
    agent any
    stages{
        stage('Podman Build'){
            steps{
                sh """
                #!/bin/sh -x
                podman machine init
                podman machine start
                Podman build -t Dockerfile
                """
            }
        }
    }
}
