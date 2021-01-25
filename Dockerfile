FROM jenkins/jenkins:latest
USER root
RUN apt update && \
    apt -y install ansible && \
    apt -y install sshpass && \
    mv tp_dev_ynov.pem ~/.ssh/   

