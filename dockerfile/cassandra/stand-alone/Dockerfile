#docker run -p 9042:9042 -p 7000:7000 -d ttbb/cassandra:stand-alone
FROM ttbb/cassandra:nake

LABEL maintainer="shoothzj@gmail.com"

COPY source /opt/sh

CMD ["/usr/local/bin/dumb-init", "bash", "-vx","/opt/sh/scripts/start.sh"]