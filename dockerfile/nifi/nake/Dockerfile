# docker run -it ttbb/nifi:nake bash
# docker run -p 8080:8080 -it ttbb/nifi:nake bash
FROM ttbb/base:jdk11

WORKDIR /opt/sh

ENV NIFI_HOME /opt/sh/nifi

ARG version=1.13.2
ARG download=1.13.2-bin

RUN wget -q https://downloads.apache.org/nifi/$version/nifi-$download.tar.gz  && \
mkdir -p /opt/sh/nifi && \
tar -xf nifi-$download.tar.gz -C /opt/sh/nifi --strip-components 1 && \
rm -rf nifi-$download.tar.gz && \
rm -rf /opt/sh/nifi/bin/*.bat && \
rm -rf /opt/sh/nifi/docs

WORKDIR /opt/sh/nifi