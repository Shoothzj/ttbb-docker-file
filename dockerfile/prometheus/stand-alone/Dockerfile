# ttbb/prometheus:stand-alone
# docker run -p 9090:9090 -it -d ttbb/prometheus:stand-alone
# docker run -p 30232:9090 -it -d ttbb/prometheus:stand-alone
FROM ttbb/prometheus:nake

COPY source /opt/sh/prometheus/hzj

CMD ["/usr/local/bin/dumb-init", "bash", "-vx", "/opt/sh/prometheus/hzj/scripts/start.sh"]