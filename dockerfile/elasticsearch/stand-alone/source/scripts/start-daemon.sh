#!/bin/bash
DIR="$( cd "$( dirname "$0"  )" && pwd  )"
HZJ_HOME="$( cd "$DIR/.." && pwd  )"
ES_HOME="$( cd "$DIR/../.." && pwd  )"

cp $HZJ_HOME/conf/elasticsearch.yml $ES_HOME/config/elasticsearch.yml

$ES_HOME/bin/elasticsearch -d