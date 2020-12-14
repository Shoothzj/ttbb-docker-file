# docker run -p 8081:8081 -d ttbb/kong:stand-alone
FROM ttbb/influxdb:nake

COPY source /opt/sh

CMD ["/usr/local/bin/dumb-init", "bash", "-vx", "/opt/sh/scripts/start.sh"]