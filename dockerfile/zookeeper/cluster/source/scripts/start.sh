mkdir -p /opt/sh/zookeeper/data

# 先获取环境变量ZOOKEEPER_NUM

if [ $ZOOKEEPER_NUM == 3 ]
then
    echo "zookeeper numer "
else
    exit 1
fi

cp /opt/sh/zk-cluster/conf/zoo.cfg /opt/sh/zookeeper/conf/zoo.cfg

# 换行
echo "" >> /opt/sh/zookeeper/conf/zoo.cfg

# 补充zoo.cfg文件
# 格式server.${index}=zookeeper-${index}.zookeeper
zk_prefix=`echo $HOSTNAME|head -c-3`
for ((i=1;i<=$ZOOKEEPER_NUM;i++))
do
    zk_index=$[$i-1]
    echo "server.$i=zookeeper-$zk_index.zookeeper:2888:3888" >> /opt/sh/zookeeper/conf/zoo.cfg
done

# 创建myid文件
zk_self_index=$[`echo $HOSTNAME|awk -F '-' '{print $NF}'`+1]
echo $zk_self_index > /opt/sh/zookeeper/data/myid

/bin/bash /opt/sh/zookeeper/bin/zkServer.sh start
tail -f /dev/null
