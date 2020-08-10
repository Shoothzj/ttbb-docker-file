# docker run -p 9042:9042 -p 7000:7000 -d ttbb/cassandra:stand-alone-eth0
FROM ttbb/cassandra:nake

LABEL maintainer="shoothzj@gmail.com"

COPY source /opt/sh/cassandra-stand-alone

CMD ["/usr/local/bin/dumb-init", "bash", "-vx","/opt/sh/cassandra-stand-alone/scripts/start.sh"]