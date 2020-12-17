# docker run -it -p 3000:3000 -p 9090:9090 --memory=”8g” -d ttbb/integrate:grafana-prometheus
# docker run -p 30231:3000 -p 30232:9090 -d ttbb/integrate:grafana-prometheus
FROM ttbb/grafana:nake AS grafana

FROM ttbb/prometheus:stand-alone

COPY --from=grafana /opt/sh/grafana /opt/sh/grafana

COPY source /opt/sh

WORKDIR /opt/sh

CMD ["/usr/local/bin/dumb-init", "bash", "-vx","/opt/sh/scripts/start.sh"]