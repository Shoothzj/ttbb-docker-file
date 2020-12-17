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

RUN wget 'https://openresty.org/package/fedora/openresty.repo' && \
mv openresty.repo /etc/yum.repos.d/ && \
dnf install -y openresty && \
yum install -y gcc luarocks lua-devel


# then install apisix

WORKDIR /opt/sh

RUN wget https://downloads.apache.org/apisix/2.1/apache-apisix-2.1-src.tgz  && \
mkdir -p apisix && \
tar -xf apache-apisix-2.1-src.tgz -C apisix --strip-components 1 && \
rm -rf apache-apisix-2.1-src.tgz && \
yum install -y git make

WORKDIR /opt/sh/apisix

RUN make deps && \
echo "export PATH=$PATH:/opt/sh/apisix/bin" >> /etc/bashrc

CMD ["/usr/local/bin/dumb-init", "bash", "-vx", "/opt/sh/scripts/start.sh"]