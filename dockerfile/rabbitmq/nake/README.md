## RabbitMQ install
### Via binary
download url: https://www.rabbitmq.com/releases/rabbitmq-server/
### Via yum
yum install -y epel-release

rpm --import https://github.com/rabbitmq/signing-keys/releases/download/2.0/rabbitmq-release-signing-key.asc

yum install -y erlang rabbitmq-server

## Command
rabbitmq-server on
rabbitmqctl add_user root root123
rabbitmqctl set_permissions -p / root ".*" ".*" ".*"
rabbitmqctl set_user_tags root administrator