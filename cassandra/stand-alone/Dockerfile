#docker run -d ttbb/cassandra:stand-alone
FROM ttbb/cassandra:nake

LABEL maintainer="shoothzj@gmail.com"

COPY source /opt/sh

CMD ["/usr/local/bin/dumb-init", "bash", "-vx","/opt/sh/scripts/start.sh"]