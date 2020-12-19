# docker run -it -p 3000:3000 -p 9090:9090 --memory=”8g” -d ttbb/integrate:grafana-prometheus
# docker run -p 30231:3000 -p 30232:9090 -d ttbb/integrate:grafana-prometheus
# docker run -p 30231:3000 -p 30232:9090 -e GLOBAL_SCRAPE_INTERVAL=30s -e GLOBAL_EVALUATION_INTERVAL=30s -e GLOBAL_SCRAPE_TIMEOUT=20s -e ZOOKEEPER_TYPE=static -e ZOOKEEPER_HOSTS=127.0.0.1 -e BOOKKEEPER_TYPE=static -e BOOKKEEPER_HOSTS=127.0.0.2 -e PULSAR_TYPE=dns -e PULSAR_DOMAINS=pulsar.com -d ttbb/integrate:grafana-prometheus
FROM ttbb/grafana:nake AS grafana

FROM ttbb/prometheus:stand-alone

COPY --from=grafana /opt/sh/grafana /opt/sh/grafana

COPY source /opt/sh

WORKDIR /opt/sh

CMD ["/usr/local/bin/dumb-init", "bash", "-vx","/opt/sh/scripts/start.sh"]