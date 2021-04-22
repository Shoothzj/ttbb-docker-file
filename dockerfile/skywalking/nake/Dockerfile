# docker run -p 8080:8080 -p 11800:11800 -p 12800:12800 -it ttbb/skywalking:nake bash
# winpty docker run -p 8080:8080 -p 11800:11800 -p 12800:12800 -it ttbb/skywalking:nake bash
FROM ttbb/base:jdk11

LABEL maintainer="shoothzj@gmail.com"

WORKDIR /opt/sh

ARG version=8.5.0

RUN wget https://downloads.apache.org/skywalking/$version/apache-skywalking-apm-es7-$version.tar.gz && \
mkdir skywalking && \
tar -xf apache-skywalking-apm-es7-$version.tar.gz -C skywalking --strip-components 1 && \
rm -rf apache-skywalking-apm-es7-$version.tar.gz

WORKDIR /opt/sh/skywalking