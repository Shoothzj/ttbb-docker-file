mkdir /opt/sh/mongo/db
mkdir /opt/sh/mongo/config
cp /opt/sh/support/config/config.yaml /opt/sh/mongo/config/config.yaml

source /etc/profile

mongod --config /opt/sh/mongo/config/config.yaml

tail -f /dev/null