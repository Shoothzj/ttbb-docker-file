# docker run -p 6650:6650 -p 2181:2181 -p 3181:3181 -p 8080:8080 -p 4181:4181 -it ttbb/pulsar:nake bash
# winpty docker run -p 6650:6650 -p 2181:2181 -p 3181:3181 -p 8080:8080 -p 4181:4181 -it ttbb/pulsar:nake bash
FROM ttbb/base:jdk11

WORKDIR /opt/sh

ENV PULSAR_HOME /opt/sh/pulsar

ARG version=2.8.0
ARG download=2.8.0-bin

RUN wget https://archive.apache.org/dist/pulsar/pulsar-$version/apache-pulsar-$download.tar.gz  && \
mkdir -p /opt/sh/pulsar && \
tar -xf apache-pulsar-$download.tar.gz -C /opt/sh/pulsar --strip-components 1 && \
rm -rf apache-pulsar-$download.tar.gz

WORKDIR /opt/sh/pulsar