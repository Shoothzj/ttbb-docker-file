FROM ttbb/base:jdk11

WORKDIR /opt/sh

ARG version=2.4.2

RUN wget https://downloads.apache.org/hbase/$version/hbase-$version-bin.tar.gz  && \
mkdir -p /opt/sh/hbase && \
tar -xf hbase-$version-bin.tar.gz -C /opt/sh/hbase --strip-components 1 && \
rm -rf hbase-$version-bin.tar.gz