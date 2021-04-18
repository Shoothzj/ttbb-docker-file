FROM ttbb/base:jdk8

ARG version=4.12.1

RUN wget https://downloads.apache.org/bookkeeper/bookkeeper-$version/bookkeeper-server-$version-bin.tar.gz  && \
mkdir -p /opt/sh/bookkeeper && \
tar -xf bookkeeper-server-$version-bin.tar.gz -C /opt/sh/bookkeeper --strip-components 1 && \
echo "export PATH=$PATH:/opt/sh/bookkeeper/bin" >> /etc/bashrc && \
rm -rf bookkeeper-server-$version-bin.tar.gz

WORKDIR /opt/sh/bookkeeper