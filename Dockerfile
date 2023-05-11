FROM jenkins/jenkins:2.387.2
USER root
RUN apt-get update && apt-get install -y ansible
RUN apt-get update && apt-get install -y python3
RUN apt-get update && apt-get install -y python3-pip
RUN python3 -m pip install PyMySQL
USER jenkins
ENV ANSIBLE_HOST_KEY_CHECKING=False
