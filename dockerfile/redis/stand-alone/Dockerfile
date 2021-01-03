# docker run -p 6379:6379 -d ttbb/redis:stand-alone
# winpty docker run -p 6379:6379 -d ttbb/redis:stand-alone
FROM ttbb/redis:nake

COPY source /opt/sh/redis/hzj

CMD ["/usr/local/bin/dumb-init", "bash", "-vx","/opt/sh/redis/hzj/scripts/start.sh"]