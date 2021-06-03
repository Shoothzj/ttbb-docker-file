FROM ttbb/base:jdk11

WORKDIR /opt/sh

ENV PULSAR_HOME /opt/sh/pulsar

ARG version=8.0.4
ARG download=8.0.4-bin

ENV QPID_HOME /opt/sh/qpid
ENV QPID_WORK /opt/sh/qpid

RUN wget -q https://downloads.apache.org/qpid/broker-j/$version/binaries/apache-qpid-broker-j-$download.tar.gz && \
mkdir -p /opt/sh/qpid && \
tar -xf apache-qpid-broker-j-$download.tar.gz -C /opt/sh/qpid --strip-components 2 && \
rm -rf apache-qpid-broker-j-$download.tar.gz && \
rm -rf /opt/sh/qpid/bin/qpid-server.bat

WORKDIR /opt/sh/qpid