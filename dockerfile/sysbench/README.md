## 准备数据
```
sysbench /usr/share/sysbench/oltp_insert.lua  --mysql-host=127.0.0.1  --mysql-port=3306 --mysql-user=hzj  --mysql-password='Mysql@123' --mysql-db=ttbb --db-driver=mysql  --tables=15  --table-size=500000  --report-interval=10 --threads=128   --time=120 prepare
```

## 压测
```
sysbench /usr/share/sysbench/oltp_insert.lua  --mysql-host=127.0.0.1  --mysql-port=3306 --mysql-user=hzj  --mysql-password='Mysql@123' --mysql-db=ttbb --db-driver=mysql  --tables=15  --table-size=500000  --report-interval=10 --threads=128   --time=120 run
```