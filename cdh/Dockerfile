FROM centos
MAINTAINER Matthieu Blanc blanc.matthieu@gmail.com

# Add the CDH4 repository
ADD cloudera-cdh4.repo /etc/yum.repos.d/
ADD cloudera-manager.repo /etc/yum.repos.d/

# Upgrade the images packages
RUN yum upgrade -y

# Install Java
RUN yum install -y java-1.7.0-openjdk

# CDH
RUN yum -y install bigtop-utils bigtop-jsvc bigtop-tomcat hadoop hadoop-hdfs hadoop-httpfs hadoop-mapreduce hadoop-yarn hadoop-client hadoop-0.20-mapreduce hue-plugins hbase hive oozie oozie-client pig zookeeper hue

# Cloudera Manager
RUN yum -y install cloudera-manager-daemons cloudera-manager-server cloudera-manager-agent

# Cloudera embedded PostgreSQL DB
RUN yum install -y cloudera-manager-server-db

# RUN service cloudera-scm-server start

# RUN service cloudera-scm-agent start