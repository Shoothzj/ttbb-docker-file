DIR="$( cd "$( dirname "$0"  )" && pwd  )"
PULSAR_HOME="$( cd "$DIR/../.." && pwd  )"

superset init
superset run -h 0.0.0.0 -p 8088 --reload --debugger