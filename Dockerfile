# IMPORTANT: PLEASE DON'T CACHE THE INTERMEDIATE IMAGE

FROM jenkins/jenkins:lts

USER root

RUN curl -fsSL get.docker.com -o get-docker.sh && sh get-docker.sh

USER jenkins
