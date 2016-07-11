#version 1.0.1
FROM  daocloud.io/bigtiger02/ubuntu:master-320e1fa
RUN \
  apt-get install -y --allow-unauthenticated --no-install-recommends software-properties-common python-software-properties \
  && add-apt-repository -y ppa:webupd8team/java \
  && echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections \
  && echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections \
  && apt-get install -y oracle-java7-installer \
  && add-apt-repository -y --remove ppa:webupd8team/java \
  && apt-get purge -y --auto-remove python-software-properties software-properties-common python python3 perl \
  && apt-get clean -y \
  && rm -rf /var/cache/oracle-jdk7-installer
