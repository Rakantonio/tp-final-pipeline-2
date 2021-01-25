properties([pipelineTriggers([githubPush()])])

pipeline {

    agent { dockerfile true }
    options {
	withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'aws_cred_antonio', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']])
    
    }
    
    environment {
	AWS_REGION = "eu-west-3"
    }
    stages {
	stage('Ansible Launch') {
	    steps {
		sh 'ansible-playbook -i /home/ubuntu/tp-final-pipeline-2/ansible/inventory.ini /home/ubuntu/tp-final-pipeline-2/ansible/install.yml --key-file "/home/ubuntu/tp-final-pipeline-2/tp_dev_ynov.pem"'
	    }
	}
    }
}
