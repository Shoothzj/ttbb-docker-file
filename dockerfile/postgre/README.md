## postgre在centos的安装方法
```bash
dnf install -y https://download.postgresql.org/pub/repos/yum/reporpms/EL-8-x86_64/pgdg-redhat-repo-latest.noarch.rpm
dnf -qy module disable postgresql
dnf install -y postgresql13-server

chown -R sh:sh /usr/pgsql-13
mkdir -p /opt/data/postgre
chown -R sh:sh /opt/data/postgre
chown -R sh:sh /var/run/postgresql
su sh -c 'bash /opt/sh/scripts/sh_user.sh'

/usr/pgsql-13/bin/initdb -U postgres -D /opt/data/postgre --no-locale --encoding=UTF8
cp /opt/sh/conf/postgresql.conf  /opt/data/postgre/postgresql.conf
cp /opt/sh/conf/pg_hba.conf  /opt/data/postgre/pg_hba.conf
/usr/pgsql-13/bin/pg_ctl -D /opt/data/postgre start
psql -U postgres -f /opt/sh/sql/init_database.sql
tail -f /dev/null
```



## connect to database
```
psql -U postgres
```