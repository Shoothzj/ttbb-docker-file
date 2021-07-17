# ttbb/grafana:nake
FROM ttbb/base

WORKDIR /opt/sh

ARG version=8.0.6

RUN wget https://dl.grafana.com/oss/release/grafana-$version.linux-amd64.tar.gz && \
mkdir grafana && \
tar -xf grafana-$version.linux-amd64.tar.gz -C /opt/sh/grafana --strip-components 1 && \
rm -rf grafana-$version.linux-amd64.tar.gz

ENV GRAFANA_HOME /opt/sh/grafana

WORKDIR /opt/sh/grafana