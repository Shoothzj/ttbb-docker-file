mysqld --daemonize --user=root

mysql -u root < /opt/sh/scripts/apollo-config.sql
mysql -u root < /opt/sh/scripts/apollo-portal.sql
mysql -u root < /opt/sh/scripts/grant.sql

bash -x /opt/sh/apollo-config/scripts/startup.sh
bash -x /opt/sh/apollo-admin/scripts/startup.sh
bash -x /opt/sh/apollo-portal/scripts/startup.sh

tail -f /dev/null