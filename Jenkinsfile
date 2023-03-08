pipeline {
    agent any
    stages{
        stage('Podman Build'){
            steps{
                sh """
                #!/bin/sh -x
                ls -al
                Podman build -t Dockerfile
                """
            }
        }
    }
}
