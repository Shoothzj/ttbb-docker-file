# ttbb/prometheus:stand-alone
# docker run -p 9090:9090 -it -d ttbb/prometheus:stand-alone
FROM ttbb/prometheus:nake

COPY prometheus-sh /opt/sh/prometheus-sh

COPY prometheus-template /opt/sh/prometheus-template

CMD ["/usr/local/bin/dumb-init", "/opt/sh/prometheus/prometheus", "--config.file=/opt/sh/prometheus/prometheus.yml"]