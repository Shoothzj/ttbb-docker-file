# docker run ttbb/etcd:stand-alone
# docker run -p 2379:2379 ttbb/etcd:stand-alone
FROM ttbb/etcd:nake

COPY source /opt/sh/etcd/hzj

ENV ETCD_HOME /opt/sh/etcd

CMD ["/usr/local/bin/dumb-init", "bash", "-vx", "/opt/sh/etcd/hzj/scripts/start.sh"]