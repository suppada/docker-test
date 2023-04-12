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