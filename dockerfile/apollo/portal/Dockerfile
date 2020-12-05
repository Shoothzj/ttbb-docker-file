# docker run ttbb/apollo:portal
FROM ttbb/base:jdk8

COPY source /opt/sh

RUN wget https://github.com/ctripcorp/apollo/releases/download/v1.7.1/apollo-portal-1.7.1-github.zip  && \
unzip apollo-portal-1.7.1-github.zip && \
rm -rf apollo-portal-1.7.1-github.zip && \
cp /opt/sh/conf/apollo-portal.properties /opt/sh/config/application-github.properties

CMD ["/usr/local/bin/dumb-init", "bash", "-vx", "/opt/sh/scripts/start.sh"]