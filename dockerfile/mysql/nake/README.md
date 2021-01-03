### mysql 安装流程
wget https://dev.mysql.com/get/Downloads/MySQL-8.0/mysql-8.0.18-1.el8.x86_64.rpm-bundle.tar
tar -xf mysql-8.0.18-1.el8.x86_64.rpm-bundle.tar -C mysqlrpm
执行pre_process.sh

yum localinstall -y /opt/sh/mysql/source/mysqlrpm/*rpm

mysqld --initialize-insecure --user=root
mysqld --user=root

### mysql日志路径
/var/log/mysqld.log

### exporter
export DATA_SOURCE_NAME='exporter:export_pwd@(hostname:3306)/'