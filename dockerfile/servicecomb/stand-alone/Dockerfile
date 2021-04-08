# docker run ttbb/servicecomb:stand-alone
# docker run -p 30100:30100 -p 30103:30103 ttbb/servicecomb:stand-alone
FROM ttbb/servicecomb:nake

COPY source /opt/sh/servicecomb/hzj

WORKDIR /opt/sh/servicecomb

ENV SERVICECOMB_HOME /opt/sh/servicecomb

CMD ["/usr/local/bin/dumb-init", "bash", "-vx", "/opt/sh/servicecomb/hzj/scripts/start.sh"]