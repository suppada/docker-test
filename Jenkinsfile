pipeline {
    agent any
    stages{
        stage('Podman Build'){
            steps{
                sh """
                #!/bin/sh -x
                ls -al
                Podman build .
                """
            }
        }
        stage('Tag image') {
            steps {
                sh 'podman tag fedora ghcr.io/suppada/fedora:latest'
            }
        }
        stage('Authenticate with GitHub') {
            steps {
                sh 'echo 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 | podman login ghcr.io -u suppada --password-stdin'
            }
        }
        stage('Push image to GitHub') {
            steps {
                sh 'podman push ghcr.io/suppada/fedora:latest'
            }
        }
    }
}