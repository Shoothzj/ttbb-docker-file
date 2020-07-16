# docker run -p 6650:6650 -p 2181:2181 -p 3181:3181 -p 8080:8080 -p 4181:4181 -it ttbb/pulsar:stand-alone-2-5-1 bash
# winpty docker run -p 6650:6650 -p 2181:2181 -p 3181:3181 -p 8080:8080 -p 4181:4181 -it ttbb/pulsar:stand-alone-2-5-1 bash
FROM ttbb/base:jdk8

RUN wget https://archive.apache.org/dist/pulsar/pulsar-2.5.1/apache-pulsar-2.5.1-bin.tar.gz  && \
mkdir -p /opt/sh/pulsar && \
tar -xf apache-pulsar-2.5.1-bin.tar.gz -C /opt/sh/pulsar --strip-components 1 && \
rm -rf apache-pulsar-2.5.1-bin.tar.gz

CMD [ "/opt/sh/pulsar/bin/pulsar", "standalone" ]