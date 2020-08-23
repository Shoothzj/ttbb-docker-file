FROM ttbb/base

LABEL maintainer="shoothzj@gmail.com"

RUN wget https://dev.mysql.com/get/Downloads/MySQL-5.6/MySQL-5.6.49-1.el7.x86_64.rpm-bundle.tar && \
tar -xf MySQL-5.6.49-1.el7.x86_64.rpm-bundle.tar && \
dnf install -y MySQL-server-5.6.49-1.el7.x86_64.rpm && \
dnf install -y MySQL-client-5.6.49-1.el7.x86_64.rpm && \
rm -rf /opt/sh/* && \
yum install -y autoconf && \
mysql_install_db --user=root

COPY scripts /opt/sh/scripts

CMD ["/usr/local/bin/dumb-init", "bash", "-vx","/opt/sh/scripts/start.sh"]