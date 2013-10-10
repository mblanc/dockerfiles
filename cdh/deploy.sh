#!/bin/sh

NAMENODE=$(sudo docker run -d mblanc/cdh /usr/sbin/sshd -D)
sleep 10
NAMENODE_IP=$(sudo docker inspect $NAMENODE | grep IPAddress | cut -d '"' -f 4)
echo ip $NAMENODE_IP