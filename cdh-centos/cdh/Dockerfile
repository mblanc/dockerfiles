FROM centos
MAINTAINER Matthieu Blanc blanc.matthieu@gmail.com

# Yum repos
RUN wget -P /etc/yum.repos.d/ http://archive.cloudera.com/cm4/redhat/6/x86_64/cm/cloudera-manager.repo
RUN wget -P /etc/yum.repos.d/ http://archive.cloudera.com/cdh4/redhat/6/x86_64/cdh/cloudera-cdh4.repo
RUN wget -P /etc/yum.repos.d/ http://archive.cloudera.com/impala/redhat/6/x86_64/impala/cloudera-impala.repo

# Upgrade
RUN yum upgrade -y

# SSH
RUN yum install -y openssh-server openssh-clients passwd
RUN sed 's/UsePAM yes/UsePAM no/' -i /etc/ssh/sshd_config
RUN echo "root:centos"|chpasswd

# CDH
RUN yum -y install java-1.7.0-openjdk
RUN yum -y install bigtop-utils bigtop-jsvc bigtop-tomcat 
RUN yum -y install hadoop hadoop-hdfs hadoop-httpfs hadoop-mapreduce hadoop-yarn hadoop-client hadoop-0.20-mapreduce 
RUN yum -y install hue-plugins hbase hive oozie oozie-client pig zookeeper
RUN yum -y install hue

# Cloudera Manager
RUN yum -y install cloudera-manager-daemons cloudera-manager-agent cloudera-manager-server cloudera-manager-server-db


RUN /etc/init.d/sshd restart

# modify /etc/cloudera-scm-agent/config.ini
RUN sed -i 's/server_host=localhost$/server_host=192.168.0.2/' /etc/cloudera-scm-agent/config.ini

# Launch Cloudera manager agent
RUN service cloudera-scm-agent start

CMD ["-D"] 
ENTRYPOINT ["/usr/sbin/sshd"]