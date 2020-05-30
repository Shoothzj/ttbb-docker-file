#!/usr/bin/env bash
cd "$(dirname "$0")"

cd ..

echo `pwd`

sudo bash /opt/sh/scripts/sudo.sh

cp /opt/sh/conf/elasticsearch.yml /opt/sh/elasticsearch/config/elasticsearch.yml

/opt/sh/elasticsearch/bin/elasticsearch