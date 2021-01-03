CREATE DATABASE IF NOT EXISTS ttbb DEFAULT CHARSET utf8mb4 COLLATE utf8mb4_bin;
CREATE USER IF NOT EXISTS hzj identified by 'Mysql@123';
GRANT ALL ON ttbb .* to hzj@'%';
CREATE USER 'exporter'@'%' IDENTIFIED BY 'export_pwd';
GRANT PROCESS, REPLICATION CLIENT, SELECT ON *.* TO 'exporter'@'%';