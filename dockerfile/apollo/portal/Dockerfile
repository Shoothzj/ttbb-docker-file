# docker run ttbb/apollo:portal
# docker run -it ttbb/apollo:portal bash
FROM ttbb/base:jdk8

WORKDIR /opt/sh/apollo-portal

COPY source /opt/sh/apollo-portal/hzj

RUN wget https://github.com/ctripcorp/apollo/releases/download/v1.7.2/apollo-portal-1.7.2-github.zip  && \
unzip apollo-portal-1.7.2-github.zip && \
rm -rf apollo-portal-1.7.2-github.zip && \
cp hzj/conf/apollo-portal.properties config/application-github.properties && \
cp hzj/conf/apollo-portal.conf apollo-portal.conf

CMD ["/usr/local/bin/dumb-init", "bash", "-vx", "/opt/sh/apollo-portal/hzj/scripts/start.sh"]
