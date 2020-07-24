FROM ttbb/base:jdk8

RUN wget http://apache.claz.org/bookkeeper/bookkeeper-4.11.0/bookkeeper-all-4.11.0-bin.tar.gz  && \
mkdir -p /opt/sh/bookkeeper && \
tar -xf bookkeeper-all-4.11.0-bin.tar.gz -C /opt/sh/bookkeeper --strip-components 1 && \
echo "export PATH=$PATH:/opt/sh/bookkeeper/bin" >> /etc/bashrc && \
rm -rf bookkeeper-all-4.11.0-bin.tar.gz

WORKDIR /opt/sh/bookkeeper 