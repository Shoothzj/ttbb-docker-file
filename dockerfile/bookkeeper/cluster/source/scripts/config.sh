source /etc/profile

cp /opt/sh/bk-cluster/conf/bk_server.conf /opt/sh/bookkeeper/conf/bk_server.conf

# 换行
echo "" >> /opt/sh/bookkeeper/conf/bk_server.conf

# bk server parameters
echo "## Server Paramters Sh" >> /opt/sh/bookkeeper/conf/bk_server.conf

echo "advertisedAddress=$HOSTNAME.bookkeeper" >> /opt/sh/bookkeeper/conf/bk_server.conf

echo "useHostNameAsBookieID=true" >> /opt/sh/bookkeeper/conf/bk_server.conf

echo "## Server Settings Sh" >> /opt/sh/bookkeeper/conf/bk_server.conf

echo "httpServerEnabled=true" >> /opt/sh/bookkeeper/conf/bk_server.conf

echo "## Metadata Service settings Sh" >> /opt/sh/bookkeeper/conf/bk_server.conf

echo "zkServers=$ZK_ADDR" >> /opt/sh/bookkeeper/conf/bk_server.conf