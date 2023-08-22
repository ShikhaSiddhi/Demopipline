pipeline {
    agent any

    environment {
        AWS_DEFAULT_REGION = 'ap-southeast-2' // Replace with your AWS region
        STACK_NAME = 'Ec2-stack-creation'         // Replace with your CloudFormation stack name
        TEMPLATE_FILE = 'ec2Provision.yaml'   // Replace with your CloudFormation template file
        PARAMETERS_FILE = 'parameter.json' // Replace with your CloudFormation parameters file
    }

    stages {
        stage('Checkout') {
            steps {
                // Checkout your source code repository if needed
                git branch: 'main', url: 'https://github.com/ShikhaSiddhi/Demopipline.git'
            }
        }

        stage('Deploy CloudFormation Stack') {
            steps {
                script {
                    sh "aws cloudformation create-stack --stack-name $STACK_NAME --template-body file://$TEMPLATE_FILE --parameters file://$PARAMETERS_FILE --capabilities CAPABILITY_IAM"
                    // Wait for the stack to complete (you can add more robust logic here)
                    sh "aws cloudformation wait stack-create-complete --stack-name $STACK_NAME"
                }
            }
        }
    }

    post {
        always {
            // Cleanup or additional steps can be added here
        }
    }
}
