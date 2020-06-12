FROM ttbb/base:jdk8

LABEL maintainer="shoothzj@gmail.com"

RUN wget https://apache.website-solution.net/cassandra/3.11.6/apache-cassandra-3.11.6-bin.tar.gz && \
mkdir -p /opt/sh/cassandra && \
tar -xf apache-cassandra-3.11.6-bin.tar.gz -C /opt/sh/cassandra --strip-components 1 && \
rm -rf apache-cassandra-3.11.6-bin.tar.gz