#current version ttbb/iotdb:nake
FROM ttbb/base:jdk8

LABEL maintainer="shoothzj@gmail.com"

RUN wget https://downloads.apache.org/incubator/iotdb/0.10.1-incubating/apache-iotdb-0.10.1-incubating-bin.zip && \
unzip  apache-iotdb-0.10.1-incubating-bin.zip && \
mv apache-iotdb-0.10.1-incubating iotdb && \
echo "export PATH=/opt/sh/iotdb/sbin:${PATH}" >> /etc/bashrc

WORKDIR /opt/sh/iotdb