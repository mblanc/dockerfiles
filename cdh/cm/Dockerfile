FROM mblanc/cdh
MAINTAINER Matthieu Blanc blanc.matthieu@gmail.com

# CDH5
RUN apt-get -y install hadoop-yarn-resourcemanager hadoop-hdfs-namenode hadoop-hdfs-secondarynamenode hadoop-mapreduce-historyserver hadoop-yarn-proxyserver hue

# Cloudera Manager
RUN apt-get -y install cloudera-manager-server cloudera-manager-server-db

EXPOSE 7180 8888 7182

ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf
CMD ["/usr/bin/supervisord"]