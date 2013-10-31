#!/bin/sh

sudo docker pull dhrp/sshd
sudo docker build -t mblanc/ubuntu-cdh ./cdh/
sudo docker build -t mblanc/ubuntu-cm ./cm/