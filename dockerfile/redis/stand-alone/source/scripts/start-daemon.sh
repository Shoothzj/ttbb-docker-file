DIR="$( cd "$( dirname "$0"  )" && pwd  )"
REDIS_HOME="$( cd "$DIR/../.." && pwd  )"

cp $REDIS_HOME/hzj/config/redis.conf $REDIS_HOME/redis.conf
nohup $REDIS_HOME/redis-server $REDIS_HOME/redis.conf >$REDIS_HOME/redis.log 2>$REDIS_HOME/redis_error.log &