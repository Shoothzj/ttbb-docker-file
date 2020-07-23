#current version ttbb/skywalking:nake
FROM ttbb/base:jdk8

LABEL maintainer="shoothzj@gmail.com"

RUN wget https://downloads.apache.org/skywalking/7.0.0/apache-skywalking-apm-es7-7.0.0.tar.gz && \
mkdir /opt/sh/skywalking && \
tar -xf apache-skywalking-apm-es7-7.0.0.tar.gz -C /opt/sh/skywalking --strip-components 1 && \
rm -rf apache-skywalking-apm-es7-7.0.0.tar.gz