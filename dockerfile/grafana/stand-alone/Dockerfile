# docker run -it ttbb/grafana:stand-alone bash
# docker run -p 3000:3000 -d ttbb/grafana:stand-alone
# docker run -p 30231:3000 -d ttbb/grafana:stand-alone
FROM ttbb/grafana:nake

COPY source /opt/sh/grafana/hzj

CMD ["/usr/local/bin/dumb-init", "bash", "-vx", "/opt/sh/grafana/hzj/scripts/start.sh"]
