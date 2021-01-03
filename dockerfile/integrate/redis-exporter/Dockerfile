# ttbb/integrate:redis-exporter
FROM ttbb/redis:exporter AS exporter

FROM ttbb/redis:stand-alone

COPY --from=exporter /opt/sh/redis_exporter /opt/sh/redis/redis_exporter

COPY source /opt/sh

WORKDIR /opt/sh

CMD ["/usr/local/bin/dumb-init", "bash", "-vx","/opt/sh/scripts/start.sh"]