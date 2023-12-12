FROM centos
RUN cd /etc/yum.repos.d/
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
RUN yum -y install openssh-server

RUN useradd remote_user && \
    echo "remote_user:1234" | chpasswd && \
    mkdir /home/remote_user/.ssh && \
    chmod 700 /home/remote_user/.ssh

COPY remote-key.pub /home/remote_user/.ssh/authorized_keys

RUN chown remote_user:remote_user -R /home/remote_user/.ssh && \
    chmod 600 /home/remote_user/.ssh/authorized_keys

RUN ssh-keygen -A
RUN yum -y install mysql unzip
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o awscli.zip && \
   unzip awscli.zip && \
   ./aws/install -i /usr/bin/aws-cli -b /usr/bin
RUN rm -rf /run/nologin
CMD /usr/sbin/sshd -D


