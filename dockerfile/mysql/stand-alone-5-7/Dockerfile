FROM ttbb/base

LABEL maintainer="shoothzj@gmail.com"

COPY scripts /opt/sh/scripts

RUN wget https://dev.mysql.com/get/Downloads/MySQL-5.7/mysql-5.7.31-1.el7.x86_64.rpm-bundle.tar && \
tar -xf mysql-5.7.31-1.el7.x86_64.rpm-bundle.tar && \
dnf install -y mysql-community-common-5.7.31-1.el7.x86_64.rpm && \
dnf install -y mysql-community-libs-5.7.31-1.el7.x86_64.rpm && \
dnf install -y mysql-community-client-5.7.31-1.el7.x86_64.rpm && \
dnf install -y mysql-community-server-5.7.31-1.el7.x86_64.rpm && \
rm -rf /opt/sh/* && \
mysqld --initialize-insecure --user=root

CMD ["/usr/local/bin/dumb-init", "bash", "-vx","/opt/sh/scripts/start.sh"]