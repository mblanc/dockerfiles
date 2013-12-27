FROM mblanc/cdh
MAINTAINER Matthieu Blanc blanc.matthieu@gmail.com

#Hue
#apt-get -y install hue

# Cloudera Manager
RUN apt-get -y install cloudera-manager-server cloudera-manager-server-db

EXPOSE 7180 8888 7182

ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf
CMD ["/usr/bin/supervisord"]