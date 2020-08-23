CREATE DATABASE IF NOT EXISTS ttbb DEFAULT CHARSET utf8mb4 COLLATE utf8mb4_bin;
CREATE USER hzj@'%' identified by 'Mysql@123';
GRANT ALL ON ttbb .* to hzj@'%';