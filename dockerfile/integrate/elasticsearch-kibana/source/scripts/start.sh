/opt/sh/elasticsearch/bin/elasticsearch -d
echo 'network.host: 0.0.0.0' > /opt/sh/elasticsearch/config/elasticsearch.yml
echo 'http.port: 9200' >> /opt/sh/elasticsearch/config/elasticsearch.yml
echo 'discovery:' >> /opt/sh/elasticsearch/config/elasticsearch.yml
echo '  type: single-node' >> /opt/sh/elasticsearch/config/elasticsearch.yml
echo 'server.host: "0.0.0.0"' > /opt/sh/kibana/config/kibana.yml
/opt/sh/kibana/bin/kibana