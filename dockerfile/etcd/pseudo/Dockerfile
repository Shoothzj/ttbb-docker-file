# docker run ttbb/etcd:pseudo
# docker run -p 2000:2000 -p 2001:2001 -p 2002:2002 -p 3000:3000 -p 3001:3001 -p 3002:3002 ttbb/etcd:pseudo
FROM ttbb/etcd:nake

COPY source /opt/sh/etcd/hzj

ENV ETCD_HOME /opt/sh/etcd

CMD ["/usr/local/bin/dumb-init", "bash", "-vx", "/opt/sh/etcd/hzj/scripts/start.sh"]