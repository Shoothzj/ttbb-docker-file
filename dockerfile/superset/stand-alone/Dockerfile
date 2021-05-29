FROM ttbb/superset:nake

COPY source /opt/sh/superset/hzj

CMD ["/usr/local/bin/dumb-init", "bash", "-vx", "/opt/sh/superset/hzj/scripts/start.sh"]