chown -R sh:sh /opt/sh

chown -R sh:sh /usr/pgsql-13
mkdir -p /opt/data/postgre
chown -R sh:sh /opt/data/postgre
chown -R sh:sh /var/run/postgresql
su sh -c 'bash /opt/sh/scripts/sh_user.sh'