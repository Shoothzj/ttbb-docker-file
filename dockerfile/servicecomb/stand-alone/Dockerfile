# docker run ttbb/servicecomb:stand-alone
FROM ttbb/servicecomb:nake

COPY source /opt/sh

CMD ["/usr/local/bin/dumb-init", "bash", "-vx", "/opt/sh/scripts/start.sh"]