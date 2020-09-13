# docker run -p 7687:7687 -p 7474:7474
FROM ttbb/base:jdk11

LABEL maintainer="shoothzj@gmail.com"

RUN wget -O neo4j.tar.gz https://neo4j.com/artifact.php?name=neo4j-community-4.1.1-unix.tar.gz && \
mkdir /opt/sh/neo4j && \
tar -xf neo4j.tar.gz -C /opt/sh/neo4j --strip-components 1 && \
rm -rf neo4j.tar.gz