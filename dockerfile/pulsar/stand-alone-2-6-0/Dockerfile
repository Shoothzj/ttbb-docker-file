# docker run -p 6650:6650 -p 2181:2181 -p 3181:3181 -p 8080:8080 -p 4181:4181 ttbb/pulsar:stand-alone-2-6-0
# winpty docker run -p 6650:6650 -p 2181:2181 -p 3181:3181 -p 8080:8080 -p 4181:4181 ttbb/pulsar:stand-alone-2-6-0
FROM ttbb/base:jdk8

RUN wget https://archive.apache.org/dist/pulsar/pulsar-2.6.0/apache-pulsar-2.6.0-bin.tar.gz  && \
mkdir -p /opt/sh/pulsar && \
tar -xf apache-pulsar-2.6.0-bin.tar.gz -C /opt/sh/pulsar --strip-components 1 && \
rm -rf apache-pulsar-2.6.0-bin.tar.gz

CMD [ "/opt/sh/pulsar/bin/pulsar", "standalone" ]