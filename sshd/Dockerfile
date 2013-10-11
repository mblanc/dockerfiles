FROM centos
MAINTAINER Matthieu Blanc blanc.matthieu@gmail.com

# Upgrade
RUN yum upgrade -y

# RUN yum install -y passwd
RUN yum install -y openssh-server openssh-clients
RUN chkconfig sshd on
RUN service sshd start

RUN ssh-keygen -t rsa -N "" -f /root/.ssh/id_rsa

ADD http://archive.cloudera.com/cm4/redhat/6/x86_64/cm/cloudera-manager.repo /etc/yum.repos.d/

RUN cp /root/.ssh/id_rsa.pub /root/.ssh/authorized_keys