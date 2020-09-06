#!/usr/bin/env bash
# docker run -e ES_ADDR='****' -p 5601:5601 -d ttbb/kibana:stand-alone
cd "$(dirname "$0")"

cd ..

echo `pwd`

# The URLs of the Elasticsearch instances to use for all your queries.
# elasticsearch.hosts: ["http://${ES_ADDRESS}"]

echo '' >> /opt/sh/kibana/config/kibana.yml
echo 'elasticsearch.hosts: ["'$ES_ADDR'"]' >> /opt/sh/kibana/config/kibana.yml
echo 'server.host: "0.0.0.0"' >> /opt/sh/kibana/config/kibana.yml

/opt/sh/kibana/bin/kibana --allow-root

tail -f /dev/null