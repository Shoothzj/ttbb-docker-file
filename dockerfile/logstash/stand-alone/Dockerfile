#current version ttbb/kibana:stand-alone
FROM ttbb/kibana:nake

LABEL maintainer="shoothzj@gmail.com"

COPY source /opt/sh/kibana/hzj

CMD ["/usr/local/bin/dumb-init", "bash", "-vx","/opt/sh/kibana/hzj/scripts/start.sh"]