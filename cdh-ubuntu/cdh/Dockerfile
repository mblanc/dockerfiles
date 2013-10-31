FROM dhrp/sshd
MAINTAINER Matthieu Blanc blanc.matthieu@gmail.com

# Yum repos
RUN wget -O /etc/apt/sources.list.d/cm4.list http://archive.cloudera.com/cm4/ubuntu/precise/amd64/cm/cloudera.list 
RUN wget -O /etc/apt/sources.list.d/cdh4.list http://archive.cloudera.com/cdh4/ubuntu/precise/amd64/cdh/cloudera.list
RUN wget http://archive.cloudera.com/cdh4/ubuntu/precise/amd64/cdh/archive.key | sudo apt-key add -

# Upgrade
RUN apt-get update -y 

# CDH
RUN apt-get install -y openjdk-7-jdk
RUN apt-get install -y bigtop-utils bigtop-jsvc bigtop-tomcat 
RUN apt-get install -y hadoop hadoop-hdfs hadoop-httpfs hadoop-mapreduce hadoop-yarn hadoop-client hadoop-0.20-mapreduce 
RUN apt-get install -y hue-plugins hbase hive oozie oozie-client pig zookeeper

RUN service hadoop-httpfs stop

# Cloudera Manager
RUN apt-get -y install cloudera-manager-daemons cloudera-manager-agent

# TODO modify /etc/cloudera-scm-agent/config.ini here

CMD ["-D"] 
ENTRYPOINT ["/usr/sbin/sshd"]