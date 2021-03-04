FROM ttbb/clickhouse:nake

COPY source /opt/sh/clickhouse/hzj

WORKDIR /opt/sh/clickhouse

CMD ["/usr/local/bin/dumb-init", "bash", "-vx", "/opt/sh/scripts/start.sh"]