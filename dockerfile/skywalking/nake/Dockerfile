#current version ttbb/skywalking:nake
FROM ttbb/base:jdk11

LABEL maintainer="shoothzj@gmail.com"

WORKDIR /opt/sh

RUN wget https://downloads.apache.org/skywalking/8.4.0/apache-skywalking-apm-es7-8.4.0.tar.gz && \
mkdir skywalking && \
tar -xf apache-skywalking-apm-es7-8.4.0.tar.gz -C skywalking --strip-components 1 && \
rm -rf apache-skywalking-apm-es7-8.4.0.tar.gz

WORKDIR /opt/sh/skywalking