FROM ubuntu:latest
MAINTAINER Matthieu Blanc blanc.matthieu@gmail.com

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y openssh-server
RUN apt-get install -y supervisor
RUN mkdir -p /var/log/supervisor
RUN mkdir -p /var/run/sshd
RUN echo 'root:root' | chpasswd

EXPOSE 22