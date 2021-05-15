DIR="$( cd "$( dirname "$0"  )" && pwd  )"

echo "" >> $PULSAR_HOME/hzj/conf/function.yaml
# workerId: standalone
echo "workId: $HOSTNAME" >> $PULSAR_HOME/hzj/conf/function.yaml
# workerHostname: localhost
echo "workHostname: $HOSTNAME" >> $PULSAR_HOME/hzj/conf/function.yaml
# configurationStoreServers
if [ $PULSAR_FUNCTION_ZOOKEEPER_SERVERS ]; then
    echo "configurationStoreServers: $PULSAR_FUNCTION_ZOOKEEPER_SERVERS" >> $PULSAR_HOME/hzj/conf/function.yaml
else
    echo "configurationStoreServers: zookeeper-0.zookeeper:2181,zookeeper-1.zookeeper:2181,zookeeper-2.zookeeper:2181" >> $PULSAR_HOME/hzj/conf/function.yaml
fi
# pulsarServiceUrl
if [ $PULSAR_FUNCTION_SERVICE_URL ]; then
    echo "pulsarServiceUrl: $PULSAR_FUNCTION_SERVICE_URL" >> $PULSAR_HOME/hzj/conf/function.yaml
else
    echo "pulsarServiceUrl: pulsar://pulsar:6650" >> $PULSAR_HOME/hzj/conf/function.yaml
fi
# pulsarWebServiceUrl
if [ $PULSAR_FUNCTION_WEB_SERVICE_URL ]; then
    echo "pulsarWebServiceUrl: $PULSAR_FUNCTION_WEB_SERVICE_URL" >> $PULSAR_HOME/hzj/conf/function.yaml
else
    echo "pulsarWebServiceUrl: http://pulsar:8080" >> $PULSAR_HOME/hzj/conf/function.yaml
fi
# pulsarFunctionsCluster
if [ $PULSAR_FUNCTION_CLUSTER ]; then
    echo "pulsarFunctionsCluster: $PULSAR_FUNCTION_CLUSTER" >> $PULSAR_HOME/hzj/conf/function.yaml
else
    echo "pulsarFunctionsCluster: pulsar" >> $PULSAR_HOME/hzj/conf/function.yaml
fi
if [ $PULSAR_FUNCTION_RUNTIME_FACTORY_CLASS_NAME ]; then
    echo "functionRuntimeFactoryClassName: $PULSAR_FUNCTION_RUNTIME_FACTORY_CLASS_NAME" >> $PULSAR_HOME/hzj/conf/function.yaml
else
    echo "functionRuntimeFactoryClassName: org.apache.pulsar.functions.runtime.thread.ThreadRuntimeFactory" >> $PULSAR_HOME/hzj/conf/function.yaml
fi
# useCompactedMetadataTopic
echo "useCompactedMetadataTopic: true" >> $PULSAR_HOME/hzj/conf/function.yaml

cp $PULSAR_HOME/hzj/conf/function-client.conf $PULSAR_HOME/conf/client.conf

cp $PULSAR_HOME/hzj/conf/function.yaml $PULSAR_HOME/conf/functions_worker.yml

/opt/sh/pulsar/bin/pulsar functions-worker