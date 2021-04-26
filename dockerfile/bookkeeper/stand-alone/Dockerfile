# docker run ttbb/bookkeeper:stand-alone
# docker run -p 2181:2181 -p 3181:3181 -p 4181:4181 -d ttbb/bookkeeper:stand-alone
# docker run -e BOOKKEEPER_ADVERTISED_ADDRESS="localhost" ttbb/bookkeeper:stand-alone
# docker run -p 2181:2181 -p 3181:3181 -p 4181:4181 -e BOOKKEEPER_ADVERTISED_ADDRESS="localhost" -e BOOKIE_ROOT_LOGGER="DEBUG,INFO,CONSOLE" ttbb/bookkeeper:stand-alone
FROM ttbb/bookkeeper:nake

COPY source /opt/sh/bookkeeper/hzj

ENV BOOKKEEPER_HOME /opt/sh/bookkeeper

CMD ["/usr/local/bin/dumb-init", "bash", "-vx", "/opt/sh/bookkeeper/hzj/scripts/start.sh"]
