DIR="$( cd "$( dirname "$0"  )" && pwd  )"
BK_HOME="$( cd "$DIR/../.." && pwd  )"
$BK_HOME/bin/bookkeeper standalone
