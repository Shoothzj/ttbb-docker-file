#!/bin/bash
# docker run -p 8080:8080 -p 12800:12800 -d ttbb/skywalking:stand-alone
DIR="$( cd "$( dirname "$0"  )" && pwd  )"
bash -x $DIR/start-daemon.sh
tail -f /dev/null