# ttbb/prometheus:stand-alone
# docker run -p 9090:9090 -it -d ttbb/prometheus:stand-alone
# docker run -p 30232:9090 -d ttbb/prometheus:stand-alone
# docker run -e GLOBAL_SCRAPE_INTERVAL=30s -e GLOBAL_EVALUATION_INTERVAL=30s -e GLOBAL_SCRAPE_TIMEOUT=20s -e ZOOKEEPER_TYPE=static -e ZOOKEEPER_HOSTS=127.0.0.1 -e BOOKKEEPER_TYPE=static -e BOOKKEEPER_HOSTS=127.0.0.2 -e PULSAR_TYPE=dns -e PULSAR_DOMAINS=pulsar.com -p 30232:9090 -d ttbb/prometheus:stand-alone
FROM ttbb/prometheus:nake

COPY source /opt/sh/prometheus/hzj

CMD ["/usr/local/bin/dumb-init", "bash", "-vx", "/opt/sh/prometheus/hzj/scripts/start.sh"]