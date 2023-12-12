FROM jenkins/jenkins

USER root
RUN apt-get update && \
    apt-get install -y python3-pip && \
    rm -rf /var/lib/apt/lists/*

#RUN pip install --upgrade pip && \
 #   pip install ansible && \
  #  pip cache purge

RUN apt-get update
RUN apt-get install -y ansible


USER jenkins 
