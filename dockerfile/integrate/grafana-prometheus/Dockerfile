# docker run -it -p 3000:3000 -p 9090:9090 -d ttbb/integrate:grafana-prometheus
# docker run -it -p 3000:3000 -p 9090:9090 --memory=”8g” -d ttbb/integrate:grafana-prometheus
# docker run -p 30231:3000 -p 30232:9090 -d ttbb/integrate:grafana-prometheus
# docker run -p 30231:3000 -p 30232:9090 -e STORAGE_TSDB_RETENTION_TIME=2d -e STORAGE_TSDB_RETENTION_SIZE=7GB -e GLOBAL_SCRAPE_INTERVAL=30s -e GLOBAL_EVALUATION_INTERVAL=30s -e GLOBAL_SCRAPE_TIMEOUT=20s -e ZOOKEEPER_TYPE=static -e ZOOKEEPER_HOSTS=127.0.0.1 -e BOOKKEEPER_TYPE=static -e BOOKKEEPER_HOSTS=127.0.0.1 -e PULSAR_TYPE=static -e PULSAR_HOSTS=127.0.0.1 -d ttbb/integrate:grafana-prometheus
FROM ttbb/grafana:stand-alone AS grafana

FROM ttbb/prometheus:stand-alone

COPY --from=grafana /opt/sh/grafana /opt/sh/grafana

COPY source /opt/sh

WORKDIR /opt/sh

CMD ["/usr/local/bin/dumb-init", "bash", "-vx","/opt/sh/scripts/start.sh"]