# docker run -p 6650:6650 -p 2181:2181 -p 3181:3181 -p 8080:8080 -p 4181:4181 -it ttbb/pulsar:nake bash
# winpty docker run -p 6650:6650 -p 2181:2181 -p 3181:3181 -p 8080:8080 -p 4181:4181 -it ttbb/pulsar:nake bash
FROM ttbb/base:jdk11

WORKDIR /opt/sh

ARG version=2.7.1

RUN wget https://archive.apache.org/dist/pulsar/pulsar-$version/apache-pulsar-$version-bin.tar.gz  && \
mkdir -p /opt/sh/pulsar && \
tar -xf apache-pulsar-$version-bin.tar.gz -C /opt/sh/pulsar --strip-components 1 && \
rm -rf apache-pulsar-$version-bin.tar.gz

WORKDIR /opt/sh/pulsar