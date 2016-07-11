#VERSION 0.0.1
FROM daocloud.io/bigtiger02/ubuntu:master-320e1fa 
MAINTAINER tiger "bigtiger02@gmail.com"
#安装nodejs
RUN   \
  cd /opt && \
  wget http://nodejs.org/dist/v0.10.28/node-v0.10.28-linux-x64.tar.gz && \
  tar -xzf node-v0.10.28-linux-x64.tar.gz && \
  mv node-v0.10.28-linux-x64 node && \
  cd /usr/local/bin && \
  ln -s /opt/node/bin/* . && \
  rm -f /opt/node-v0.10.28-linux-x64.tar.gz
#安装npm
RUN apt-get install -y npm;
#设置npm源
RUN npm config set registry http://registry.cnpmjs.org;
#安装forever
RUN npm install forever -g;
