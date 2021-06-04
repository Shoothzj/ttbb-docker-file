#!/bin/bash
cd "$(dirname "$0")"

cd ..

echo `pwd`

cp /opt/sh/conf/neo4j.conf /opt/sh/neo4j/conf/neo4j.conf

/opt/sh/neo4j/bin/neo4j start

tail -f /dev/null