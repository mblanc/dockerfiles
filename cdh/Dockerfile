FROM mblanc/sshd
MAINTAINER Matthieu Blanc blanc.matthieu@gmail.com

# Yum repos
RUN wget -P /etc/yum.repos.d/ http://archive.cloudera.com/cm4/redhat/6/x86_64/cm/cloudera-manager.repo
RUN wget -P /etc/yum.repos.d/ http://archive.cloudera.com/cdh4/redhat/6/x86_64/cdh/cloudera-cdh4.repo
RUN wget -P /etc/yum.repos.d/ http://archive.cloudera.com/impala/redhat/6/x86_64/impala/cloudera-impala.repo

# Upgrade
RUN yum upgrade -y

# CDH
RUN yum -y install bigtop-utils bigtop-jsvc bigtop-tomcat hadoop hadoop-hdfs hadoop-httpfs hadoop-mapreduce hadoop-yarn hadoop-client hadoop-0.20-mapreduce hue-plugins hbase hive oozie oozie-client pig zookeeper

# Cloudera Manager
RUN yum -y install cloudera-manager-daemons cloudera-manager-agent