# docker run -p 8086:8086 -p 8088:8088 ttbb/influxdb:stand-alone
FROM ttbb/chronograf:nake

COPY source /opt/sh

CMD ["/usr/local/bin/dumb-init", "bash", "-vx", "/opt/sh/scripts/start.sh"]