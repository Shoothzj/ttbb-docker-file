DIR="$( cd "$( dirname "$0"  )" && pwd  )"
INFLUX_HOME="$( cd "$DIR/../.." && pwd  )"

nohup influxd run >$INFLUX_HOME/influx.log 2>$INFLUX_HOME/node1/influx_error.log &
