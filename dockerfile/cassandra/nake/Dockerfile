# docker run -p 9042:9042 -p 7000:7000 -d ttbb/cassandra:stand-alone
FROM ttbb/base:jdk11

LABEL maintainer="shoothzj@gmail.com"

RUN wget https://downloads.apache.org/cassandra/4.0-beta1/apache-cassandra-4.0-beta1-bin.tar.gz && \
mkdir -p /opt/sh/cassandra && \
tar -xf apache-cassandra-4.0-beta1-bin.tar.gz -C /opt/sh/cassandra --strip-components 1 && \
rm -rf apache-cassandra-4.0-beta1-bin.tar.gz