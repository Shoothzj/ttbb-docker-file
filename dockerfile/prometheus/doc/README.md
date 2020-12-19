## 全局环境变量
GLOBAL_SCRAPE_INTERVAL:15s
GLOBAL_EVALUATION_INTERVAL:15s
GLOBAL_SCRAPE_TIMEOUT: 10s
## Prometheus自动识别配置
### 样例
ZOOKEEPER_TYPE: static
ZOOKEEPER_HOSTS: 127.0.0.1:6999
#### type的取值
- static 静态，把静态的host添加到地址列表中