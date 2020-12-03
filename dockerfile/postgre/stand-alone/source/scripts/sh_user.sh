/usr/pgsql-13/bin/initdb -U postgres -D /opt/data/postgre --no-locale --encoding=UTF8
cp /opt/sh/conf/postgresql.conf  /opt/data/postgre/postgresql.conf
cp /opt/sh/conf/pg_hba.conf  /opt/data/postgre/pg_hba.conf
/usr/pgsql-13/bin/pg_ctl -D /opt/data/postgre start
psql -U postgres -f /opt/sh/sql/init_database.sql
tail -f /dev/null