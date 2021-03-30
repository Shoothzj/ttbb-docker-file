# docker run -p 3306:3306 -d ttbb/mysql:stand-alone
# winpty docker run -p 3306:3306 -d ttbb/mysql:stand-alone
FROM ttbb/mysql:nake

COPY source /opt/sh/mysql/hzj

WORKDIR /opt/sh/mysql

ENV MYSQL_HOME /opt/sh/mysql

CMD ["/usr/local/bin/dumb-init", "bash", "-vx","/opt/sh/mysql/hzj/scripts/start.sh"]