#!/bin/bash
DIR="$( cd "$( dirname "$0"  )" && pwd  )"
HZJ_HOME="$( cd "$DIR/.." && pwd  )"
METRICBEAT_HOME="$( cd "$DIR/../.." && pwd  )"

cp $HZJ_HOME/conf/metricbeat.yml $METRICBEAT_HOME/metricbeat.yml

$METRICBEAT_HOME/metricbeat -e -system.hostfs=/hostfs -c $METRICBEAT_HOME/metricbeat.yml