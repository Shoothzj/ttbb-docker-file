FROM ttbb/base

LABEL maintainer="shoothzj@gmail.com"

RUN wget https://artifacts.elastic.co/downloads/beats/heartbeat/heartbeat-7.12.0-linux-x86_64.tar.gz && \
mkdir /opt/sh/heartbeat && \
tar -xf heartbeat-7.12.0-linux-x86_64.tar.gz -C /opt/sh/heartbeat --strip-components 1 && \
rm -rf /opt/sh/heartbeat-7.12.0-linux-x86_64.tar.gz

ENV HEARTBEAT_HOME /opt/sh/heartbeat

WORKDIR /opt/sh/heartbeat