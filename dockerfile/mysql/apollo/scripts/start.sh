mysqld --daemonize --user=root

mysql -u root < /opt/sh/scripts/apollo-config.sql
mysql -u root < /opt/sh/scripts/apollo-portal.sql
mysql -u root < /opt/sh/scripts/grant.sql

tail -f /dev/null