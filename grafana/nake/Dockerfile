FROM ttbb/base

WORKDIR /opt/sh

RUN wget https://dl.grafana.com/oss/release/grafana-7.0.1.linux-amd64.tar.gz && \
mkdir /opt/sh/grafana && \
tar -xf grafana-7.0.1.linux-amd64.tar.gz -C /opt/sh/grafana --strip-components 1 && \
rm -rf grafana-7.0.1.linux-amd64.tar.gz