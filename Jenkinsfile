pipeline {
    agent any
    tools {
        terraform 'Terraform-1.0.10'
    }

    stages {
         stage('Git checkout') {
            steps {
                git branch: 'teraformdemo', url: 'https://github.com/ShikhaSiddhi/Demopipline.git'
            }
        }
        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }
          stage('Terraform Apply') {
            steps {
                sh 'terraform apply --auto-approve'
            }
        }
    }
}
