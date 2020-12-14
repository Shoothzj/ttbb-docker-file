# docker run -it ttbb/apisix:nake bash
FROM ttbb/base

RUN wget https://downloads.apache.org/apisix/2.1/apache-apisix-2.1-src.tgz  && \
mkdir -p /opt/sh/apisix && \
tar -xf apache-apisix-2.1-src.tgz -C /opt/sh/apisix --strip-components 1 && \
rm -rf apache-apisix-2.1-src.tgz && \
echo "export PATH=$PATH:/opt/sh/apisix/bin" >> /etc/bashrc

WORKDIR /opt/sh/apisix