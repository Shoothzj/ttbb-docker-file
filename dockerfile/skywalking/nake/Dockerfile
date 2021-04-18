#current version ttbb/skywalking:nake
FROM ttbb/base:jdk11

LABEL maintainer="shoothzj@gmail.com"

WORKDIR /opt/sh

ARG version=8.5.0

RUN wget https://downloads.apache.org/skywalking/$version/apache-skywalking-apm-es7-$version.tar.gz && \
mkdir skywalking && \
tar -xf apache-skywalking-apm-es7-$version.tar.gz -C skywalking --strip-components 1 && \
rm -rf apache-skywalking-apm-es7-$version.tar.gz

WORKDIR /opt/sh/skywalking