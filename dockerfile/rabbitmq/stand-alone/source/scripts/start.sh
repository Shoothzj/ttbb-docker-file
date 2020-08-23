rabbitmq-server -detached
sleep 3
rabbitmqctl add_user root root123
rabbitmqctl set_permissions -p / root ".*" ".*" ".*"
rabbitmqctl set_user_tags root administrator
tail -f /dev/null