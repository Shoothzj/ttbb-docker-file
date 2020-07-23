FROM ttbb/base:jdk14

RUN wget https://downloads.apache.org/hbase/2.2.5/hbase-2.2.5-bin.tar.gz  && \
mkdir -p /opt/sh/hbase && \
tar -xf hbase-2.2.5-bin.tar.gz -C /opt/sh/hbase --strip-components 1 && \
rm -rf hbase-2.2.5-bin.tar.gz