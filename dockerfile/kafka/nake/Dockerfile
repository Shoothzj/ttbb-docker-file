#ttbb/kafka:nake
FROM ttbb/base:jdk8

LABEL maintainer="shoothzj@gmail.com"

RUN wget https://downloads.apache.org/kafka/2.6.0/kafka_2.13-2.6.0.tgz && \
mkdir /opt/sh/kafka && \
tar -xf /opt/sh/kafka_2.13-2.6.0.tgz -C /opt/sh/kafka --strip-components 1 && \
rm -rf kafka_2.13-2.6.0.tgz

WORKDIR /opt/sh/kafka