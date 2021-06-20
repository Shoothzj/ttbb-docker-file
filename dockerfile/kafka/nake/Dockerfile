# ttbb/kafka:nake
FROM ttbb/base:jdk11

LABEL maintainer="shoothzj@gmail.com"

WORKDIR /opt/sh

ENV KAFKA_HOME /opt/sh/kafka

ARG version=2.8.0

RUN wget https://downloads.apache.org/kafka/$version/kafka_2.13-$version.tgz && \
mkdir /opt/sh/kafka && \
tar -xf /opt/sh/kafka_2.13-$version.tgz -C /opt/sh/kafka --strip-components 1 && \
rm -rf kafka_2.13-$version.tgz

COPY source /opt/sh/kafka/hzj

WORKDIR /opt/sh/kafka