#!/bin/sh

sudo docker build -t mblanc/centos-sshd ./sshd/
sudo docker build -t mblanc/centos-cdh ./cdh/
sudo docker build -t mblanc/centos-cm ./cm/