# docker run -p 9042:9042 -p 7000:7000 -d ttbb/cassandra:stand-alone
FROM ttbb/base:jdk11

LABEL maintainer="shoothzj@gmail.com"

RUN wget -O cassandra.tar.gz https://downloads.apache.org/cassandra/4.0-beta4/apache-cassandra-4.0-beta4-bin.tar.gz && \
mkdir -p /opt/sh/cassandra && \
tar -xf cassandra.tar.gz -C /opt/sh/cassandra --strip-components 1 && \
echo "export PATH=$PATH:/opt/sh/cassandra/bin" >> /etc/bashrc && \
rm -rf cassandra.tar.gz

WORKDIR /opt/sh/cassandra