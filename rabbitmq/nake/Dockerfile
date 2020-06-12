#current version ttbb/rabbitmq:nake
FROM ttbb/base

LABEL maintainer="shoothzj@163.com"

COPY rabbitmq.repo /etc/yum.repos.d/rabbitmq.repo

RUN yum install -y epel-release && \
yum install -y erlang rabbitmq-server