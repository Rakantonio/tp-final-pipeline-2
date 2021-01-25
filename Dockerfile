FROM jenkins/jenkins:latest
USER root
RUN apt update && \
    apt -y install ansible && \
    apt -y install -y openssh sshpass && \
    adduser -D -s /bin/sh ansible 

USER ansible
RUN mkdir /home/ansible/playbook && \
    ssh-keygen -t rsa -f /home/ansible/.ssh/id_rsa -N ''

WORKDIR /home/ansible/playbook

ENTRYPOINT [ "ansible-playbook" ]
