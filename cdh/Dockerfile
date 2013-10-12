FROM mblanc/sshd
MAINTAINER Matthieu Blanc blanc.matthieu@gmail.com

# Yum repos
RUN wget -P /etc/yum.repos.d/ http://archive.cloudera.com/cm4/redhat/6/x86_64/cm/cloudera-manager.repo
RUN wget -P /etc/yum.repos.d/ http://archive.cloudera.com/cdh4/redhat/6/x86_64/cdh/cloudera-cdh4.repo
RUN wget -P /etc/yum.repos.d/ http://archive.cloudera.com/impala/redhat/6/x86_64/impala/cloudera-impala.repo

# Upgrade
RUN yum upgrade -y

# Install Java
RUN yum install -y java-1.7.0-openjdk

# CDH
RUN yum -y install bigtop-utils
RUN yum -y install bigtop-jsvc
RUN yum -y install bigtop-tomcat
RUN yum -y install hadoop
RUN yum -y install hadoop-hdfs
RUN yum -y install hadoop-httpfs
RUN yum -y install hadoop-mapreduce
RUN yum -y install hadoop-yarn
RUN yum -y install hadoop-client
RUN yum -y install hadoop-0.20-mapreduce
RUN yum -y install hue-plugins
RUN yum -y install hbase
RUN yum -y install hive
RUN yum -y install oozie
RUN yum -y install oozie-client
RUN yum -y install pig
RUN yum -y install zookeeper
RUN yum -y install hue

# Cloudera Manager
RUN yum -y install cloudera-manager-daemons cloudera-manager-server cloudera-manager-agent

# Cloudera embedded PostgreSQL DB
RUN yum install -y cloudera-manager-server-db

EXPOSE 7180:7180,8888:8888

CMD ["-D"]
ENTRYPOINT ["/usr/sbin/sshd"]