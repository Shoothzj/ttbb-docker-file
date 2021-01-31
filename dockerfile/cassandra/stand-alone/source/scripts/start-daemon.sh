DIR="$( cd "$( dirname "$0"  )" && pwd  )"
CASSANDRA_HOME="$( cd "$DIR/../.." && pwd  )"

cp $CASSANDRA_HOME/hzj/conf/cassandra-env.sh $CASSANDRA_HOME/conf/cassandra-env.sh
$CASSANDRA_HOME/bin/cassandra -R