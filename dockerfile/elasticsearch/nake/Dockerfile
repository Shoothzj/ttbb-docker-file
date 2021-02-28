# ttbb/elasticsearch:nake
# docker run -it ttbb/elasticsearch:nake bash
FROM ttbb/base

LABEL maintainer="shoothzj@gmail.com"

WORKDIR /opt/sh

RUN wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.11.1-linux-x86_64.tar.gz && \
mkdir elasticsearch && \
tar -xf elasticsearch-7.11.1-linux-x86_64.tar.gz -C /opt/sh/elasticsearch --strip-components 1 && \
rm -rf /opt/sh/elasticsearch-7.11.1-linux-x86_64.tar.gz && \
chown -R sh:sh /opt/sh/elasticsearch

WORKDIR /opt/sh/elasticsearch