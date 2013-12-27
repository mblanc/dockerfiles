FROM mblanc/sshd
MAINTAINER Matthieu Blanc blanc.matthieu@gmail.com

# Apt-get repos
RUN wget -O /etc/apt/sources.list.d/cm5.list http://archive.cloudera.com/cm5/ubuntu/precise/amd64/cm/cloudera.list 
RUN wget -O /etc/apt/sources.list.d/cdh5.list http://archive.cloudera.com/cdh5/ubuntu/precise/amd64/cdh/cloudera.list
RUN wget http://archive.cloudera.com/cdh5/ubuntu/precise/amd64/cdh/archive.key
RUN apt-key add archive.key

# Upgrade
RUN apt-get update -y