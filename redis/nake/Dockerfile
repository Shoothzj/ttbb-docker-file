FROM ttbb/base

LABEL maintainer="shoothzj@gmail.com"

WORKDIR /opt/sh

RUN wget http://download.redis.io/releases/redis-6.0.5.tar.gz && \
mkdir /opt/sh/redis && \
tar -xf redis-6.0.5.tar.gz -C /opt/sh/redis --strip-components 1 && \
rm -rf redis-6.0.5.tar.gz

WORKDIR /opt/sh/redis

RUN yum install -y make gcc && \
make