# integrate for apollo all
# docker run -d ttbb/integrate:apisix
FROM ttbb/base

COPY source /opt/sh

# install etcd first
WORKDIR /opt/sh

RUN wget https://github.com/etcd-io/etcd/releases/download/v3.4.14/etcd-v3.4.14-linux-amd64.tar.gz  && \
mkdir -p etcd && \
tar -xf etcd-v3.4.14-linux-amd64.tar.gz -C etcd --strip-components 1 && \
rm -rf etcd-v3.4.14-linux-amd64.tar.gz && \
cp etcd/etcd /usr/bin/etcd && \
cp etcd/etcdctl /usr/bin/etcdctl


# then openresty
WORKDIR /opt/sh

RUN wget https://openresty.org/download/openresty-1.19.3.1.tar.gz && \
mkdir /opt/sh/openresty && \
tar -xf /opt/sh/openresty-1.19.3.1.tar.gz -C /opt/sh/openresty --strip-components 1 && \
rm -rf /opt/sh/openresty-1.19.3.1.tar.gz

WORKDIR /opt/sh/openresty

RUN yum install -y perl pcre-devel openssl-devel gcc curl luarocks
RUN ./configure && \
gmake && \
gmake install && \
echo "export PATH=$PATH:/usr/local/openresty/nginx/sbin" >> /etc/bashrc && \
echo "export PATH=$PATH:/usr/local/openresty/bin" >> /etc/bashrc && \
echo "chown -R sh:sh /usr/local/openresty" >> /etc/bashrc && \
rm -rf /opt/sh/openresty && \
cp /opt/sh/conf/nginx.conf /usr/local/openresty/nginx/conf

# then install apisix

WORKDIR /opt/sh

RUN wget https://downloads.apache.org/apisix/2.1/apache-apisix-2.1-src.tgz  && \
mkdir -p /opt/sh/apisix && \
tar -xf apache-apisix-2.1-src.tgz -C /opt/sh/apisix --strip-components 1 && \
rm -rf apache-apisix-2.1-src.tgz && \
echo "export PATH=$PATH:/opt/sh/apisix/bin" >> /etc/bashrc

WORKDIR /opt/sh/apisix

CMD ["/usr/local/bin/dumb-init", "bash", "-vx", "/opt/sh/scripts/start.sh"]
