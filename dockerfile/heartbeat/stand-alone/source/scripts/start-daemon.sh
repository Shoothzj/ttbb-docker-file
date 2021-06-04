#!/bin/bash
DIR="$( cd "$( dirname "$0"  )" && pwd  )"
HZJ_HOME="$( cd "$DIR/.." && pwd  )"

cp $HZJ_HOME/conf/heartbeat.yml $HEARTBEAT_HOME/heartbeat.yml

$HEARTBEAT_HOME/heartbeat -e -c $HEARTBEAT_HOME/heartbeat.yml