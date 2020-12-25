#!/usr/bin/env bash
DIR="$( cd "$( dirname "$0"  )" && pwd  )"
HZJ_HOME="$( cd "$DIR/.." && pwd  )"
FILEBEAT_HOME="$( cd "$DIR/../.." && pwd  )"

cp $HZJ_HOME/conf/filebeat.yml $FILEBEAT_HOME/filebeat.yml

$FILEBEAT_HOME/filebeat -e -c $FILEBEAT_HOME/filebeat.yml