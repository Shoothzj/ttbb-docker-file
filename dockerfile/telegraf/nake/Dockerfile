# ttbb/telegraf:nake
FROM ttbb/base

LABEL maintainer="shoothzj@gmail.com"

RUN wget https://dl.influxdata.com/telegraf/releases/telegraf-1.15.2_linux_amd64.tar.gz && \
mkdir /opt/sh/telegraf && \
tar -xf telegraf-1.15.2_linux_amd64.tar.gz -C /opt/sh/telegraf --strip-components 2 && \
rm -rf /opt/sh/telegraf-1.15.2_linux_amd64.tar.gz

WORKDIR /opt/sh/telegraf