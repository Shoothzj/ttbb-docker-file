# docker run -p 8086:8086 -p 8088:8088 ttbb/influxdb:stand-alone
FROM ttbb/influxdb:nake

COPY source /opt/sh/influxdb/hzj

CMD ["/usr/local/bin/dumb-init", "bash", "-vx", "/opt/sh/influxdb/hzj/scripts/start.sh"]