FROM ttbb/base

LABEL maintainer="shoothzj@gmail.com"

ARG download=7.12.1-linux-x86_64

RUN wget https://artifacts.elastic.co/downloads/beats/packetbeat/packetbeat-$download.tar.gz && \
mkdir /opt/sh/packetbeat && \
tar -xf packetbeat-$download.tar.gz -C /opt/sh/packetbeat --strip-components 1 && \
rm -rf /opt/sh/packetbeat-$download.tar.gz

ENV HEARTBEAT_HOME /opt/sh/packetbeat

WORKDIR /opt/sh/packetbeat