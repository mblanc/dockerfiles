FROM mblanc/sshd
MAINTAINER Matthieu Blanc blanc.matthieu@gmail.com

# Apt-get repos
RUN wget -O /etc/apt/sources.list.d/cm5.list http://archive.cloudera.com/cm5/ubuntu/precise/amd64/cm/cloudera.list 
RUN wget -O /etc/apt/sources.list.d/cdh5.list http://archive.cloudera.com/cdh5/ubuntu/precise/amd64/cdh/cloudera.list
RUN wget http://archive.cloudera.com/cdh5/ubuntu/precise/amd64/cdh/archive.key
RUN apt-key add archive.key

# Upgrade
RUN apt-get update -y

# Fake a fuse install (or openjdk-7-jdk will not install)
RUN apt-get install libfuse2
RUN cd /tmp ; apt-get download fuse
RUN cd /tmp ; dpkg-deb -x fuse_* .
RUN cd /tmp ; dpkg-deb -e fuse_*
RUN cd /tmp ; rm fuse_*.deb
RUN cd /tmp ; echo -en '#!/bin/bash\nexit 0\n' > DEBIAN/postinst
RUN cd /tmp ; dpkg-deb -b . /fuse.deb
RUN cd /tmp ; dpkg -i /fuse.deb

# JDK 7
RUN apt-get install -y openjdk-7-jdk

# CDH 4
#RUN apt-get install -y bigtop-utils bigtop-jsvc bigtop-tomcat 
#RUN apt-get install -y hadoop hadoop-hdfs hadoop-httpfs hadoop-mapreduce hadoop-yarn hadoop-client hadoop-0.20-mapreduce 
#RUN apt-get install -y hue-plugins hbase hive oozie oozie-client pig zookeeper

# CDH 5
RUN apt-get install -y bigtop-jsvc bigtop-utils bigtop-tomcat hue-common sqoop2-client impala-shell

# Cloudera Manager
RUN apt-get -y install cloudera-manager-daemons cloudera-manager-agent

# Locale
RUN locale-gen en_US en_US.UTF-8
RUN dpkg-reconfigure locales

# tmp
RUN chmod 777 /tmp

# TODO modify /etc/cloudera-scm-agent/config.ini here
#RUN sed -i 's/127\.0\.0\.1/192\.168\.1\.1/' /etc/cloudera-scm-agent/config.ini

ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf
CMD ["/usr/bin/supervisord"]