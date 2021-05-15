#current version ttbb/kibana:nake
FROM ttbb/base

LABEL maintainer="shoothzj@gmail.com"

WORKDIR /opt/sh

RUN wget https://artifacts.elastic.co/downloads/logstash/logstash-7.12.1-linux-x86_64.tar.gz && \
mkdir logstash && \
tar -xf logstash-7.12.1-linux-x86_64.tar.gz -C logstash --strip-components 1 && \
rm -rf logstash-7.12.1-linux-x86_64.tar.gz && \
chown -R sh:sh /opt/sh

WORKDIR /opt/sh/logstash