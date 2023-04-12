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
                sh 'echo mytoken.txt | podman login ghcr.io -u suppada --password-stdin'
            }
        }
        stage('Push image to GitHub') {
            steps {
                sh 'podman push ghcr.io/suppada/fedora:latest'
            }
        }
    }
}