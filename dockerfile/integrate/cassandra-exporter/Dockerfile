# ttbb/integrate:cassandra-exporter
FROM ttbb/cassandra:exporter AS exporter

FROM ttbb/cassandra:stand-alone

COPY --from=exporter /opt/sh/cassandra_exporter-2.3.5.jar /opt/sh/cassandra/cassandra_exporter-2.3.5.jar

COPY source /opt/sh

WORKDIR /opt/sh

CMD ["/usr/local/bin/dumb-init", "bash", "-vx","/opt/sh/scripts/start.sh"]