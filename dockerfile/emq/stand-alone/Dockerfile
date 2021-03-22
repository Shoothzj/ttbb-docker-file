#当前版本 ttbb/emq:stand-alone
FROM ttbb/base:latest

RUN wget https://www.emqx.io/downloads/broker/v4.2.8/emqx-centos8-4.2.8-x86_64.rpm && \
rpm -ivh emqx-centos8-4.2.8-x86_64.rpm && \
rm -rf emqx-centos8-4.2.8-x86_64.rpm

COPY source /opt/sh/emq/hzj

ENV EMQ_HOME /opt/sh/emq

CMD ["/usr/local/bin/dumb-init", "bash", "-vx", "/opt/sh/emq/hzj/scripts/start.sh"]