FROM centos
MAINTAINER Matthieu Blanc blanc.matthieu@gmail.com

RUN yum upgrade -y

RUN yum install -y openssh-server openssh-clients
RUN sed 's/UsePAM yes/UsePAM no/' -i /etc/ssh/sshd_config
RUN sed 's/#PermitRootLogin yes/PermitRootLogin yes/' -i /etc/ssh/sshd_config
RUN sed 's/#PermitEmptyPasswords no/PermitEmptyPasswords no/' -i /etc/ssh/sshd_config
RUN /etc/init.d/sshd restart

RUN ssh-keygen -t rsa -N "" -f /root/.ssh/id_rsa
RUN wget -P /etc/yum.repos.d/ http://archive.cloudera.com/cm4/redhat/6/x86_64/cm/cloudera-manager.repo
RUN cp /root/.ssh/id_rsa.pub /root/.ssh/authorized_keys

#ENTRYPOINT ["/usr/sbin/sshd"]
#CMD ["-D"] 