# ttbb/elasticsearch:nake
# docker run -it ttbb/elasticsearch:nake bash
FROM ttbb/base

LABEL maintainer="shoothzj@gmail.com"

WORKDIR /opt/sh

ARG version=7.13.3

RUN wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-$version-linux-x86_64.tar.gz && \
mkdir elasticsearch && \
tar -xf elasticsearch-$version-linux-x86_64.tar.gz -C /opt/sh/elasticsearch --strip-components 1 && \
rm -rf /opt/sh/elasticsearch-$version-linux-x86_64.tar.gz && \
chown -R sh:sh /opt/sh/elasticsearch

WORKDIR /opt/sh/elasticsearch