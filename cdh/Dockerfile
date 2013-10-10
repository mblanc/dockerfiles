FROM centos
MAINTAINER Matthieu Blanc blanc.matthieu@gmail.com

# Upgrade
RUN yum upgrade -y

# RUN yum install -y passwd
RUN yum install -y openssh-server openssh-clients
RUN chkconfig sshd on
RUN service sshd start

RUN ssh-keygen -t rsa -N "" -f /root/.ssh/id_rsa
RUN cp /root/.ssh/id_rsa.pub /root/.ssh/authorized_keys


# Yum repos
RUN wget -P /etc/yum.repos.d/ http://archive.cloudera.com/cm4/redhat/6/x86_64/cm/cloudera-manager.repo
RUN wget -P /etc/yum.repos.d/ http://archive.cloudera.com/cdh4/redhat/6/x86_64/cdh/cloudera-cdh4.repo
RUN wget -P /etc/yum.repos.d/ http://archive.cloudera.com/impala/redhat/6/x86_64/impala/cloudera-impala.repo

# Upgrade
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