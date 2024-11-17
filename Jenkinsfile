pipeline {
    agent any
    environment {
        AWS_ACCESS_KEY_ID = credentials('aws-access-key-id')  // Correct reference for AWS access key
        AWS_SECRET_ACCESS_KEY = credentials('aws-secret-access-key')  // Correct reference for AWS secret key
        AWS_REGION = 'us-east-1'
    }
    stages {
        stage('Git Check Out') {
            steps {
                git branch: 'main', url: 'https://github.com/mohankumar130/terraform_jenkins.git'
            }
        }
        stage('Terraform init') {
            steps {
                sh '''
                    cd terraform-ec2
                    terraform init
                '''
            }
        }
        stage('Terraform plan') {
            steps {
                script {
                    // Run terraform plan and save output to tfplan file
                    sh '''
                        cd terraform-ec2
                        terraform plan -out=tfplan
                    '''
                }
            }
        }
        stage('Terraform show plan') {
            steps {
                script {
                    // Display the output of the Terraform plan (optional)
                    sh '''
                        cd terraform-ec2
                        terraform show tfplan
                    '''
                }
            }
        }
        stage('Terraform apply') {
            steps {
                script {
                    // Apply the terraform plan
                    // Uncomment the line below to actually apply the plan automatically
                    sh '''
                        cd terraform-ec2
                        terraform apply -auto-approve tfplan
                    '''
                    echo 'Terraform plan ready for review'
                }
            }
        }
    }
}
