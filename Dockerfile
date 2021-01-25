FROM jenkins/jenkins:latest
USER root
RUN apt update && \
    apt -y install ansible && \
    chmod 600 /home/ubuntu/tp-final-pipeline-2/ansible/tp_dev_ynov.pem
    
 
    
    

