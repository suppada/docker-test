pipeline {
    agent any
    stages{
        stage('Podman Build'){
            steps {
                sh """
                    #!/bin/sh -x
                    ls -al
                    Podman build -t fedora .
                """
            }
        }
        stage('Tag image') {
            steps {
                sh """
                    podman tag fedora ghcr.io/suppada/fedora:latest
                """
            }
        }
        stage('Authenticate with GitHub') {
            steps {
                sh """
                    export TOKEN=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
                    echo $TOKEN | podman login ghcr.io -u suppada --password-stdin
                """
            }
        }
        stage('Push image to GitHub') {
            steps {
                sh """
                    podman push ghcr.io/suppada/fedora:latest
                """
            }
        }
    }
}