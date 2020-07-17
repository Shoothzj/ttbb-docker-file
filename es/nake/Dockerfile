# ttbb/es:nake
FROM ttbb/base:jdk11

LABEL maintainer="shoothzj@gmail.com"

RUN wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.8.0-linux-x86_64.tar.gz && \
mkdir /opt/sh/elasticsearch && \
tar -xf elasticsearch-7.8.0-linux-x86_64.tar.gz -C /opt/sh/elasticsearch --strip-components 1 && \
rm -rf /opt/sh/elasticsearch-7.8.0-linux-x86_64.tar.gz && \
chown -R sh:sh /opt/sh

USER sh
