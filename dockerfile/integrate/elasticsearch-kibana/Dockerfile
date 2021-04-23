# docker run -p 5601:5601 -p 9200:9200 -d ttbb/integrate:elasticsearch-kibana
# docker run -p 5601:5601 -p 9200:9200 -d ttbb/integrate:elasticsearch-kibana
# docker run -p 5601:5601 -p 9200:9200 --memory="4g" -d ttbb/integrate:elasticsearch-kibana
# docker run -p 5601:5601 -p 9200:9200 --memory="20g" -d ttbb/integrate:elasticsearch-kibana
# docker run -p 30237:5601 -p 30236:9200 --memory="20g" -d ttbb/integrate:elasticsearch-kibana
FROM ttbb/elasticsearch:stand-alone AS elasticsearch

FROM ttbb/kibana:stand-alone

COPY --chown=sh:sh --from=elasticsearch /opt/sh/elasticsearch /opt/sh/elasticsearch

COPY --chown=sh:sh source /opt/sh

WORKDIR /opt/sh

CMD ["/usr/local/bin/dumb-init", "bash", "-vx","/opt/sh/scripts/start.sh"]

USER sh