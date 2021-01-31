# docker run ttbb/apollo:config
FROM ttbb/base:jdk8

WORKDIR /opt/sh/apollo-config

COPY source /opt/sh/apollo-config/hzj

RUN wget https://github.com/ctripcorp/apollo/releases/download/v1.7.2/apollo-configservice-1.7.2-github.zip  && \
unzip apollo-configservice-1.7.2-github.zip && \
rm -rf apollo-configservice-1.7.2-github.zip && \
cp hzj/conf/apollo-config.properties config/application-github.properties && \
cp hzj/conf/apollo-configservice.conf apollo-configservice.conf

CMD ["/usr/local/bin/dumb-init", "bash", "-vx", "/opt/sh/apollo-config/hzj/scripts/start.sh"]
