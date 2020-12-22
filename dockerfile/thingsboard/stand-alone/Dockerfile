# docker run ttbb/thingsboard:stand-alone
FROM ttbb/thingsboard:nake

COPY source /opt/sh

CMD ["/usr/local/bin/dumb-init", "bash", "-vx", "/opt/sh/scripts/start.sh"]