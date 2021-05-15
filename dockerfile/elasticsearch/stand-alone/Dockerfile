# ttbb/elasticsearch:stand-alone
# docker run -p 9200:9200 ttbb/elasticsearch:stand-alone
# docker run -d ttbb/elasticsearch:stand-alone
# docker run -d -p 9200:9200 ttbb/elasticsearch:stand-alone
# docker run -d -p 30236:9200 ttbb/elasticsearch:stand-alone
FROM ttbb/elasticsearch:nake

LABEL maintainer="shoothzj@gmail.com"

COPY --chown=sh:sh  source /opt/sh/elasticsearch/hzj

CMD ["/usr/local/bin/dumb-init", "bash", "-vx","/opt/sh/elasticsearch/hzj/scripts/start.sh"]

USER sh