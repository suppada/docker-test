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