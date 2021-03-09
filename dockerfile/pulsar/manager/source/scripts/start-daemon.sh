DIR="$( cd "$( dirname "$0"  )" && pwd  )"
PULSAR_MANAGER_HOME="$( cd "$DIR/../.." && pwd  )"

nohup /opt/sh/pulsar-manager/build/distributions/pulsar-manager/bin/pulsar-manager >$PULSAR_MANAGER_HOME/back.log 2>$PULSAR_MANAGER_HOME/front_error.log &
cd /opt/sh/pulsar-manager/front-end/
nohup npm run dev >$PULSAR_MANAGER_HOME/front.log 2>$PULSAR_MANAGER_HOME/front_error.log &