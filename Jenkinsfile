pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'terraform init' 
                sh 'terraform plan' 
                sh 'terraform apply -y' 
            }
        } 

        // stage('Test') {
        //     steps {
        //         echo 'Testing..'
        //     }
        // } 

        stage('Deploy') {
            steps {
                sh 'ansible playbook playbook.yml -y'
            }
        }
    }
} 
