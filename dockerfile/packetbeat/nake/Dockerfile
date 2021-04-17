FROM ttbb/base

LABEL maintainer="shoothzj@gmail.com"

RUN wget https://artifacts.elastic.co/downloads/beats/packetbeat/packetbeat-7.12.0-linux-x86_64.tar.gz && \
mkdir /opt/sh/packetbeat && \
tar -xf packetbeat-7.12.0-linux-x86_64.tar.gz -C /opt/sh/packetbeat --strip-components 1 && \
rm -rf /opt/sh/packetbeat-7.12.0-linux-x86_64.tar.gz

ENV HEARTBEAT_HOME /opt/sh/packetbeat

WORKDIR /opt/sh/packetbeat