# 仓库介绍
存放ttbb的镜像仓库

# 环境变量介绍

## grafana
### GRAFANA_SMTP_ENABLED
### GRAFANA_SMTP_HOST
### GRAFANA_SMTP_USER
### GRAFANA_SMTP_PASSWORD
### GRAFANA_SMTP_SKIP_VERIFY
### GRAFANA_SMTP_FROM_ADDRESS
### GRAFANA_SMTP_FROM_NAME

## kafka
### KAFKA_ADVERTISE_ADDRESS
指定Kafka的advertise address

## skywalking
### SW_STORAGE_ES_CLUSTER_NODES
Skywalking连接的es集群地址


## dockerfile

### base
基础镜像

### jdk11-ssh
调用/usr/sbin/sshd

## es部署
参考: https://blog.csdn.net/chenleiking/article/details/79453460

# 声明
- 其中出现的密码仅为示例密码，如需正式使用，请修改密码