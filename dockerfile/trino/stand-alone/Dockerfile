FROM ttbb/trino:nake

COPY source /opt/sh/trino/hzj

CMD ["/usr/local/bin/dumb-init", "bash", "-vx", "/opt/sh/trino/hzj/scripts/start.sh"]