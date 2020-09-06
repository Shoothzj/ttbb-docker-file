#!/usr/bin/env bash
cd "$(dirname "$0")"

cd ..

echo `pwd`

cp /opt/sh/conf/elasticsearch.yml /opt/sh/elasticsearch/config/elasticsearch.yml

chown -R sh:sh /opt/sh

su paas /opt/sh/elasticsearch/bin/elasticsearch