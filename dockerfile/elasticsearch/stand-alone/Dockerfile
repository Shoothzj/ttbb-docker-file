# ttbb/elasticsearch:stand-alone
# docker run -d ttbb/elasticsearch:stand-alone
FROM ttbb/elasticsearch:nake

LABEL maintainer="shoothzj@gmail.com"

COPY --chown=sh:sh  source /opt/sh/

CMD ["/usr/local/bin/dumb-init", "bash", "-vx","/opt/sh/scripts/start.sh"]