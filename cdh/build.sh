#!/bin/sh

sudo docker build -t mblanc/sshd ./sshd/
sudo docker build -t mblanc/cloudera ./cloudera/
sudo docker build -t mblanc/cdh ./cdh/
sudo docker build -t mblanc/cm ./cm/