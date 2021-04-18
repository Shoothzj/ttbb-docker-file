# ttbb/grafana:nake
FROM ttbb/base

WORKDIR /opt/sh

ARG version=7.5.4

RUN wget https://dl.grafana.com/oss/release/grafana-$version.linux-amd64.tar.gz && \
mkdir grafana && \
tar -xf grafana-$version.linux-amd64.tar.gz -C /opt/sh/grafana --strip-components 1 && \
rm -rf grafana-$version.linux-amd64.tar.gz

WORKDIR /opt/sh/grafana