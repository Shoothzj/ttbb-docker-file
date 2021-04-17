#!/usr/bin/env bash
DIR="$( cd "$( dirname "$0"  )" && pwd  )"
HZJ_HOME="$( cd "$DIR/.." && pwd  )"
PACKETBEAT_HOME="$( cd "$DIR/../.." && pwd  )"

cp $HZJ_HOME/conf/heartbeat.yml $PACKETBEAT_HOME/heartbeat.yml

$PACKETBEAT_HOME/heartbeat -e -c $PACKETBEAT_HOME/heartbeat.yml