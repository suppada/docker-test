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