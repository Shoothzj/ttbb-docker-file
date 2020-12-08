# docker run -it -p 5601:5601 -p 9200:9200 -d ttbb/integrate:elasticsearch-kibana
# docker run -it -p 5601:5601 -p 9200:9200 --memory=”20g” -d ttbb/integrate:elasticsearch-kibana
FROM ttbb/base

COPY source /opt/sh/

RUN wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.9.1-linux-x86_64.tar.gz && \
mkdir /opt/sh/elasticsearch && \
tar -xf elasticsearch-7.9.1-linux-x86_64.tar.gz -C /opt/sh/elasticsearch --strip-components 1 && \
rm -rf /opt/sh/elasticsearch-7.9.1-linux-x86_64.tar.gz && \
wget https://artifacts.elastic.co/downloads/kibana/kibana-7.9.1-linux-x86_64.tar.gz && \
mkdir /opt/sh/kibana && \
tar -xf kibana-7.9.1-linux-x86_64.tar.gz -C /opt/sh/kibana --strip-components 1 && \
rm -rf kibana-7.9.1-linux-x86_64.tar.gz && \
chown -R sh:sh /opt/sh

CMD ["/usr/local/bin/dumb-init", "bash", "-vx","/opt/sh/scripts/start.sh"]

USER sh