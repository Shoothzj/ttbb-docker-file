#docker run -d ttbb/grafana:stand-alone
FROM ttbb/grafana:nake

COPY grafana-sh /opt/sh/grafana-sh

COPY grafana-template /opt/sh/grafana-template

CMD ["/usr/local/bin/dumb-init", "/opt/sh/grafana/bin/grafana-server", "web"]
