#docker run -p 2181:2181 -it ttbb/zookeeper:nake bash
FROM ttbb/base:jdk11

LABEL maintainer="shoothzj@gmail.com"

WORKDIR /opt/sh

RUN wget https://downloads.apache.org/zookeeper/zookeeper-3.6.2/apache-zookeeper-3.6.2-bin.tar.gz && \
mkdir -p zookeeper && \
tar -xf apache-zookeeper-3.6.2-bin.tar.gz -C /opt/sh/zookeeper --strip-components 1 && \
rm -rf apache-zookeeper-3.6.2-bin.tar.gz

WORKDIR /opt/sh/zookeeper