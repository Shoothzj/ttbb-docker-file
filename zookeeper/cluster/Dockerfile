# docker run -p 2181:2181 -d ttbb/zookeeper:stand-alone
FROM ttbb/zookeeper:nake

COPY source /opt/sh/zk-cluster

CMD ["/usr/local/bin/dumb-init", "bash", "-vx","/opt/sh/scripts/start.sh"]