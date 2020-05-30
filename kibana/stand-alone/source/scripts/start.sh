#!/usr/bin/env bash
# docker run -e ES_ADDR='****' -p 5601:5601 -d ttbb/kibana:stand-alone
cd "$(dirname "$0")"

cd ..

echo `pwd`

mkdir -p /var/log/kibana

# The URLs of the Elasticsearch instances to use for all your queries.
# elasticsearch.hosts: ["http://${ES_ADDRESS}"]

cp /opt/sh/conf/kibana.yml /etc/kibana/kibana.yml

echo '' >> /etc/kibana/kibana.yml
echo 'elasticsearch.hosts: ["'$ES_ADDR'"]' >> /etc/kibana/kibana.yml

/usr/share/kibana/bin/kibana --allow-root