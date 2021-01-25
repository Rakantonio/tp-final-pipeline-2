FROM jenkins/jenkins:latest
USER root
RUN apt update && \
    apt -y install ansible && \
    apt -y install sshpass && \
    mkdir ~/.ssh && \
    echo "tp_dev_ynov.pem" > ~/.ssh/tp_dev_ynov.pem   

