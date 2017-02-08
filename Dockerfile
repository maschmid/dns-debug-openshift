FROM centos

RUN yum -y --setopt=tsflags=nodocs install wget git tar which curl tree java-1.8.0-openjdk-devel net-utils createrepo /usr/bin/nslookup /usr/bin/dig && yum -y clean all

ENV JAVA_HOME=/etc/alternatives/java_sdk_1.8.0_openjdk 
          
CMD bash -c "while true; do sleep 10; done"

