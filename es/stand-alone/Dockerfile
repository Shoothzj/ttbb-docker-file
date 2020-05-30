FROM ttbb/es:nake

LABEL maintainer="shoothzj@gmail.com"

COPY source /opt/sh/

RUN chown -R sh:sh /opt/sh

CMD ["/usr/local/bin/dumb-init", "bash", "-vx","/opt/sh/scripts/start.sh"]
USER sh