FROM mblanc/cdh
MAINTAINER Matthieu Blanc blanc.matthieu@gmail.com

#Hue
apt-get install hue

# Cloudera Manager
RUN apt-get -y install cloudera-manager-server cloudera-manager-server-db

EXPOSE 7180:7180 8888:8888

CMD ["-D"] 
ENTRYPOINT ["/usr/sbin/sshd"]