# docker run -p 9100:9100 -it ttbb/node-exporter:nake bash
FROM ttbb/base

RUN wget https://github.com/prometheus/node_exporter/releases/download/v1.0.1/node_exporter-1.0.1.linux-amd64.tar.gz  && \
mkdir -p /opt/sh/node_exporter && \
tar -xf node_exporter-1.0.1.linux-amd64.tar.gz -C /opt/sh/node_exporter --strip-components 1 && \
rm -rf node_exporter-1.0.1.linux-amd64.tar.gz

WORKDIR /opt/sh/node_exporter