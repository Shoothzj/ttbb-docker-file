# ttbb/telegraf:nake
FROM ttbb/base

LABEL maintainer="shoothzj@gmail.com"

WORKDIR /opt/sh

ARG version=1.18.1

RUN wget https://dl.influxdata.com/telegraf/releases/telegraf-$version_linux_amd64.tar.gz && \
mkdir /opt/sh/telegraf && \
tar -xf telegraf-$version_linux_amd64.tar.gz -C /opt/sh/telegraf --strip-components 2 && \
rm -rf /opt/sh/telegraf-$version_linux_amd64.tar.gz

WORKDIR /opt/sh/telegraf