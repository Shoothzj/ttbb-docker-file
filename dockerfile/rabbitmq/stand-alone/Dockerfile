# docker run -d ttbb/rabbitmq:stand-alone
FROM ttbb/rabbitmq:nake

COPY source /opt/sh/support

CMD ["/usr/local/bin/dumb-init", "bash", "-vx","/opt/sh/support/scripts/start.sh"]
