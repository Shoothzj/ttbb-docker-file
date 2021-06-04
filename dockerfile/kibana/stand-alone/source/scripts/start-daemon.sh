#!/bin/bash
DIR="$( cd "$( dirname "$0"  )" && pwd  )"
HZJ_HOME="$( cd "$DIR/.." && pwd  )"
KIBANA_HOME="$( cd "$DIR/../.." && pwd  )"

# The URLs of the Elasticsearch instances to use for all your queries.
# elasticsearch.hosts: ["http://${ES_ADDRESS}"]

echo '' >> $KIBANA_HOME/config/kibana.yml
if [ $GLOBAL_SCRAPE_TIMEOUT ]; then
    echo 'elasticsearch.hosts: ["'$ES_ADDR'"]' >> $KIBANA_HOME/config/kibana.yml
else
    echo 'elasticsearch.hosts: ["http://127.0.0.1:9200"]' >> $KIBANA_HOME/config/kibana.yml
fi
echo 'server.host: "0.0.0.0"' >> $KIBANA_HOME/config/kibana.yml

nohup $KIBANA_HOME/bin/kibana --allow-root >$KIBANA_HOME/normal.log 2>$KIBANA_HOME/error.log