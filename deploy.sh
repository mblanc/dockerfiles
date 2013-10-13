#!/bin/sh

NAMENODE=$(sudo docker run -d mblanc/cm /usr/sbin/sshd -D)
echo $NAMENODE
sleep 5
NAMENODE_IP=$(sudo docker inspect $NAMENODE | grep IPAddress | cut -d '"' -f 4)
echo ip $NAMENODE_IP
pipework br1 $NAMENODE 192.168.1.2/24


DATANODE1=$(sudo docker run -d mblanc/cdh /usr/sbin/sshd -D)
echo $DATANODE1
sleep 5
DATANODE1_IP=$(sudo docker inspect $NAMENODE | grep IPAddress | cut -d '"' -f 4)
echo ip $DATANODE1_IP
pipework br1 $DATANODE1 192.168.1.3/24

DATANODE2=$(sudo docker run -d mblanc/cdh /usr/sbin/sshd -D)
echo $DATANODE2
sleep 5
DATANODE2_IP=$(sudo docker inspect $NAMENODE | grep IPAddress | cut -d '"' -f 4)
echo ip $DATANODE2_IP
pipework br1 $DATANODE2 192.168.1.4/24