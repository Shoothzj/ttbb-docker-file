shard_num=`echo $HOSTNAME|awk -F '-' '{print $3}'`
mkdir -p /opt/sh/mongo/shard$shard_num/db
mkdir /opt/sh/mongo/config
cp /opt/sh/support/config/config.yaml /opt/sh/mongo/config/config.yaml

# 换行
echo "" >> /opt/sh/mongo/config/config.yaml

echo "replication:" >> /opt/sh/mongo/config/config.yaml

echo "    replSetName: shard$shard_num" >> /opt/sh/mongo/config/config.yaml

echo "storage:" >> /opt/sh/mongo/config/config.yaml

echo "    dbPath: /opt/sh/mongo/shard$shard_num/db" >> /opt/sh/mongo/config/config.yaml

source /etc/profile

mongod --config /opt/sh/mongo/config/config.yaml

tail -f /dev/null