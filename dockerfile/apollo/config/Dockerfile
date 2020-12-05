# docker run ttbb/apollo:config
FROM ttbb/base:jdk8

COPY source /opt/sh

RUN wget https://github.com/ctripcorp/apollo/releases/download/v1.7.1/apollo-configservice-1.7.1-github.zip  && \
unzip apollo-configservice-1.7.1-github.zip && \
rm -rf apollo-configservice-1.7.1-github.zip && \
cp /opt/sh/conf/apollo-config.properties /opt/sh/config/application-github.properties

CMD ["/usr/local/bin/dumb-init", "bash", "-vx", "/opt/sh/scripts/start.sh"]