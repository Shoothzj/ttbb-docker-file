# docker run -it ttbb/etcd:nake bash
FROM ttbb/base

RUN wget https://github.com/etcd-io/etcd/releases/download/v3.4.14/etcd-v3.4.14-linux-amd64.tar.gz  && \
mkdir -p etcd && \
tar -xf etcd-v3.4.14-linux-amd64.tar.gz -C etcd --strip-components 1 && \
rm -rf etcd-v3.4.14-linux-amd64.tar.gz && \
ln -s /opt/sh/etcd/etcd /usr/bin/etcd && \
ln -s /usr/local/go/bin/go /usr/bin/etcdctl

WORKDIR /opt/sh/etcd