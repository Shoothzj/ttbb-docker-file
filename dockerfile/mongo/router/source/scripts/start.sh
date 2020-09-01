mkdir /opt/sh/mongo/config
cp /opt/sh/support/config/router.yaml /opt/sh/mongo/config/router.yaml

source /etc/profile

mongos --config /opt/sh/mongo/config/router.yaml

tail -f /dev/null