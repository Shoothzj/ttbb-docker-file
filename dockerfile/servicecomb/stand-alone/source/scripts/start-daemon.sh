#!/usr/bin/env bash
DIR="$( cd "$( dirname "$0"  )" && pwd  )"
HZJ_HOME="$( cd "$DIR/.." && pwd  )"

cp $HZJ_HOME/conf/app.conf /opt/sh/servicecomb/conf/app.conf
bash $SERVICECOMB_HOME/start-service-center.sh
bash $SERVICECOMB_HOME/start-frontend.sh