FROM mblanc/cloudera
MAINTAINER Matthieu Blanc blanc.matthieu@gmail.com


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

# CDH 5
RUN apt-get install -y bigtop-jsvc bigtop-utils bigtop-tomcat hue-common sqoop2-client impala-shell
RUN apt-get install -y hadoop-yarn-nodemanager hadoop-hdfs-datanode hadoop-mapreduce hadoop-client hive hive-metastore hive-server2 oozie oozie-client pig zookeeper

# Cloudera Manager
RUN apt-get -y install cloudera-manager-daemons cloudera-manager-agent

# Locale
RUN locale-gen en_US en_US.UTF-8
RUN dpkg-reconfigure locales

# tmp
RUN chmod 777 /tmp

# TODO modify /etc/cloudera-scm-agent/config.ini here
RUN sed -i 's/server_host=localhost/server_host=192\.168\.1\.1/' /etc/cloudera-scm-agent/config.ini

ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf
CMD ["/usr/bin/supervisord"]