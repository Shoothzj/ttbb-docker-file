FROM ttbb/base

LABEL maintainer="shoothzj@gmail.com"

ARG download=7.12.1-linux-x86_64

RUN wget https://artifacts.elastic.co/downloads/beats/heartbeat/heartbeat-$download.tar.gz && \
mkdir /opt/sh/heartbeat && \
tar -xf heartbeat-$download.tar.gz -C /opt/sh/heartbeat --strip-components 1 && \
rm -rf /opt/sh/heartbeat-$download.tar.gz

ENV HEARTBEAT_HOME /opt/sh/heartbeat

WORKDIR /opt/sh/heartbeat