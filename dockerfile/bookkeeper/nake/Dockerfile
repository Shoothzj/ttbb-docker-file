FROM ttbb/base:jdk8

RUN wget https://downloads.apache.org/bookkeeper/bookkeeper-4.12.1/bookkeeper-server-4.12.1-bin.tar.gz  && \
mkdir -p /opt/sh/bookkeeper && \
tar -xf bookkeeper-server-4.12.1-bin.tar.gz -C /opt/sh/bookkeeper --strip-components 1 && \
echo "export PATH=$PATH:/opt/sh/bookkeeper/bin" >> /etc/bashrc && \
rm -rf bookkeeper-server-4.12.1-bin.tar.gz

WORKDIR /opt/sh/bookkeeper 