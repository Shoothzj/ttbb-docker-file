bash -vx /opt/sh/pulsar-cluster/scripts/config.sh

source /etc/profile

/opt/sh/pulsar/bin/pulsar-daemon start broker

tail -f /dev/null
