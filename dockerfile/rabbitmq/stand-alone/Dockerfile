# docker run -d ttbb/rabbitmq:stand-alone
# docker run -p 4369:4369 -p 5672:5672 -p 25672:25672 ttbb/rabbitmq:stand-alone
# docker run -p 4369:4369 -p 5672:5672 -p 25672:25672 -d ttbb/rabbitmq:stand-alone
FROM ttbb/rabbitmq:nake

COPY source /opt/sh/rabbitmq/hzj

CMD ["/usr/local/bin/dumb-init", "bash", "-vx","/opt/sh/rabbitmq/hzj/scripts/start.sh"]