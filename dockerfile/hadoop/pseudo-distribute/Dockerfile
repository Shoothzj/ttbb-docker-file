# docker run ttbb/hadoop:pseduo-distribute
# docker run -d ttbb/hadoop:pseduo-distribute
FROM ttbb/hadoop:nake

COPY source /opt/sh/hadoop/hzj

ENTRYPOINT ["/usr/local/bin/dumb-init", "bash", "-vx", "/opt/sh/hadoop/hzj/scripts/start.sh"]