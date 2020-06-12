#docker run -p 2181:2181 -it ttbb/zookeeper:nake bash
FROM ttbb/base:jdk14

LABEL maintainer="shoothzj@gmail.com"

RUN wget https://downloads.apache.org/zookeeper/zookeeper-3.6.1/apache-zookeeper-3.6.1-bin.tar.gz && \
mkdir -p /opt/sh/source/zookeeper && \
tar -xf apache-zookeeper-3.6.1-bin.tar.gz -C /opt/sh/source/zookeeper --strip-components 1 && \
rm -rf apache-zookeeper-3.6.1-bin.tar.gz