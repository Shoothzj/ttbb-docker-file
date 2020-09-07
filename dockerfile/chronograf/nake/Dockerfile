# docker run -p 8086:8086 -p 8088:8088 -it ttbb/influxdb:nake bash
FROM ttbb/base

RUN wget https://dl.influxdata.com/chronograf/releases/chronograf-1.8.6_linux_amd64.tar.gz  && \
mkdir -p /opt/sh/chronograf && \
tar -xf chronograf-1.8.6_linux_amd64.tar.gz -C /opt/sh/chronograf --strip-components 2 && \
rm -rf chronograf-1.8.6_linux_amd64.tar.gz && \
echo "export PATH=$PATH:/opt/sh/chronograf/usr/bin" >> /etc/bashrc

WORKDIR /opt/sh/chronograf