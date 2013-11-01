FROM mblanc/centos-cdh
MAINTAINER Matthieu Blanc blanc.matthieu@gmail.com

#Hue
RUN yum -y install hue

# Cloudera Manager
RUN yum -y install cloudera-manager-server cloudera-manager-server-db

# Launch Cloudera manager server
RUN service cloudera-scm-server-db start
RUN service cloudera-scm-server start

EXPOSE 7180:7180 8888:8888

CMD ["-D"] 
ENTRYPOINT ["/usr/sbin/sshd"]