#!/usr/bin/env bash
# docker run -p 8080:8080 -p 12800:12800 -d ttbb/skywalking:stand-alone
cd "$(dirname "$0")"

cd ..

echo `pwd`

/opt/sh/skywalking/bin/startup.sh

tail -f /dev/null