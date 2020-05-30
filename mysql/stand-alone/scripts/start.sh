mysqld --daemonize --user=root

mysql -u root < /opt/sh/scripts/init.sql

tail -f /dev/null