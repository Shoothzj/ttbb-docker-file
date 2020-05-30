#!/usr/bin/env bash
# SW_STORAGE=elasticsearch7
# docker run -e SW_STORAGE_ES_CLUSTER_NODES='****' -p 8080:8080 -p 12800:12800 -d ttbb/skywalking:stand-alone
cd "$(dirname "$0")"

cd ..

echo `pwd`

cp /opt/sh/config/application.yaml /opt/sh/skywalking/config/application.yml

/opt/sh/skywalking/bin/startup.sh

tail -f /dev/null