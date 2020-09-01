# docker run -it -p 9090:9090 -p 9091:9091 --memory=”8g” -d ttbb/integrate:prometheus-all
FROM ttbb/node-exporter:nake AS node

FROM ttbb/prometheus:stand-alone

COPY --from=node /opt/sh/node-exporter /opt/sh/node-exporter

COPY source /opt/sh/support

RUN wget https://github.com/prometheus/alertmanager/releases/download/v0.21.0/alertmanager-0.21.0.linux-amd64.tar.gz  && \
mkdir -p /opt/sh/alertmanager && \
tar -xf alertmanager-0.21.0.linux-amd64.tar.gz -C /opt/sh/alertmanager --strip-components 1 && \
rm -rf alertmanager-0.21.0.linux-amd64.tar.gz && \
wget https://github.com/prometheus/pushgateway/releases/download/v1.2.0/pushgateway-1.2.0.linux-amd64.tar.gz && \
mkdir -p /opt/sh/pushgateway && \
tar -xf pushgateway-1.2.0.linux-amd64.tar.gz -C /opt/sh/pushgateway --strip-components 1 && \
rm -rf pushgateway-1.2.0.linux-amd64.tar.gz

WORKDIR /opt/sh

CMD ["/usr/local/bin/dumb-init", "bash", "-vx","/opt/sh/support/scripts/start.sh"]