cp /opt/sh/conf/cassandra-env.sh /opt/sh/cassandra/conf/cassandra-env.sh
/opt/sh/cassandra/bin/cassandra -R
tail -f /dev/null
