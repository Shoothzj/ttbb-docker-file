#docker run -d ttbb/grafana:stand-alone
FROM ttbb/grafana:nake

COPY source /opt/sh/grafana-support

CMD ["/usr/local/bin/dumb-init", "bash", "-vx", "/opt/sh/grafana-support/scripts/start.sh"]
