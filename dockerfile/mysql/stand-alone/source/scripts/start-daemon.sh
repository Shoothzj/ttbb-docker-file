DIR="$( cd "$( dirname "$0"  )" && pwd  )"
MYSQL_HOME="$( cd "$DIR/../.." && pwd  )"

mysqld --daemonize --user=root

mysql -u root < $MYSQL_HOME/hzj/sql/init.sql

tail -f /dev/null