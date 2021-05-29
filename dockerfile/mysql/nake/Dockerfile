FROM ttbb/base

LABEL maintainer="shoothzj@gmail.com"

WORKDIR /opt/sh

RUN wget https://dev.mysql.com/get/mysql80-community-release-el8-1.noarch.rpm && \
yum localinstall -y mysql80-community-release-el8-1.noarch.rpm && \
rm -rf mysql80-community-release-el8-1.noarch.rpm && \
yum module disable -y mysql && \
yum install -y mysql-community-server && \
chmod 777 -R /var/log && \
chown -R sh:sh /var/lib/mysql* && \
chown -R sh:sh /run/mysqld && \
mysqld --initialize-insecure --user=root

WORKDIR /opt/sh/mysql