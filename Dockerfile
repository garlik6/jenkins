FROM jenkins/jenkins:2.387.2
USER root
RUN apt-get update && apt-get install -y ansible
USER jenkins
ENV ANSIBLE_HOST_KEY_CHECKING=False
