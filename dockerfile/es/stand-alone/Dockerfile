# ttbb/es:stand-alone
FROM ttbb/es:nake

LABEL maintainer="shoothzj@gmail.com"

COPY source /opt/sh/

RUN cp /opt/sh/conf/elasticsearch.yml /opt/sh/elasticsearch/config/elasticsearch.yml && \
chown -R sh:sh /opt/sh

CMD ["/usr/local/bin/dumb-init", "bash", "-vx","/opt/sh/scripts/start.sh"]

USER sh