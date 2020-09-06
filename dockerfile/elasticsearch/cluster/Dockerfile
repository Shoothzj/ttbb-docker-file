# ttbb/es:cluster
FROM ttbb/es:nake

LABEL maintainer="shoothzj@gmail.com"

COPY source /opt/sh/es-cluster

CMD ["/usr/local/bin/dumb-init", "bash", "-vx","/opt/sh/es-cluster/scripts/start.sh"]
