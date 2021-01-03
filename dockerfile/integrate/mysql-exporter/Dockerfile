# ttbb/integrate:mysql-exporter
FROM ttbb/mysql:exporter AS exporter

FROM ttbb/mysql:stand-alone

COPY --from=exporter /opt/sh/mysqld_exporter /opt/sh/mysql/mysqld_exporter

COPY source /opt/sh

WORKDIR /opt/sh

CMD ["/usr/local/bin/dumb-init", "bash", "-vx","/opt/sh/scripts/start.sh"]