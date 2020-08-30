# docker run -p 8086:8086 -p 8088:8088 ttbb/influxdb:stand-alone
FROM ttbb/influxdb:nake

CMD ["/usr/local/bin/dumb-init", "/opt/sh/influxdb/usr/bin/influxd"]