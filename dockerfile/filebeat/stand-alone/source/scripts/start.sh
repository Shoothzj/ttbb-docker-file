#!/usr/bin/env bash
cd "$(dirname "$0")"

cd ..

echo `pwd`

cp /opt/sh/conf/filebeat.yml /opt/sh/filebeat/filebeat.yml

/opt/sh/filebeat/filebeat -e

tail -f /dev/null