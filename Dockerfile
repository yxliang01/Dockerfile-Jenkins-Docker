# IMPORTANT: PLEASE DON'T CACHE THE INTERMEDIATE IMAGE

FROM jenkins/jenkins:lts
ENV dockerComposeVersion=1.16.1
ENV DEBIAN_FRONTEND=noninteractive

MAINTAINER Xiao Liang <mr.y.xiaoliang@ieee.org>

USER root

RUN curl -fsSL get.docker.com -o get-docker.sh && sh get-docker.sh

RUN usermod -aG docker jenkins

RUN curl -L https://github.com/docker/compose/releases/download/$dockerComposeVersion/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose

RUN chmod +x /usr/local/bin/docker-compose

USER jenkins
