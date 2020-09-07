#!/usr/bin/env bash
cd "$(dirname "$0")"

cd ..

echo `pwd`

cp /opt/sh/conf/metricbeat.yml /opt/sh/metricbeat/metricbeat.yml

/opt/sh/metricbeat/metricbeat -e

tail -f /dev/null