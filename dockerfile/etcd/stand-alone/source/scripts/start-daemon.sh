DIR="$( cd "$( dirname "$0"  )" && pwd  )"
ETCD_HOME="$( cd "$DIR/../.." && pwd  )"

nohup etcd >$ETCD_HOME/etcd.log 2>$ETCD_HOME/etcd_error.log &