#!/bin/sh

NAMENODE=$(sudo docker run -d -t -P -name namenode -h namenode.cluster.com mblanc/cm)
echo $NAMENODE
sleep 3
pipework br1 $NAMENODE 192.168.1.1/24

DATANODE1=$(sudo docker run -d -t -link namenode:namenode -h datanode1.cluster.com mblanc/cdh)
echo $DATANODE1
sleep 3
pipework br1 $DATANODE1 192.168.1.2/24

DATANODE2=$(sudo docker run -d -t -link namenode:namenode -h datanode2.cluster.com mblanc/cdh)
echo $DATANODE2
sleep 3
pipework br1 $DATANODE2 192.168.1.3/24

DATANODE3=$(sudo docker run -d -t -link namenode:namenode -h datanode3.cluster.com mblanc/cdh)
echo $DATANODE3
sleep 3
pipework br1 $DATANODE3 192.168.1.4/24