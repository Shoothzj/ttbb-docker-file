# docker run -d ttbb/integrate:apisix
FROM ttbb/etcd:nake AS etcd
FROM ttbb/nginx:openresty AS openresty
FROM ttbb/compile:c

COPY --from=etcd /opt/sh/etcd/etcd /usr/bin/etcd
COPY --from=etcd /opt/sh/etcd/etcdctl /usr/bin/etcdctl
COPY --from=openresty /opt/sh/openresty /opt/sh/openresty

ARG version=2.7
ARG download=2.7-src

# then openresty
WORKDIR /opt/sh

RUN ln -s /opt/sh/openresty/nginx/sbin/nginx /usr/bin/nginx && \
ln -s /opt/sh/openresty/bin/openresty /usr/bin/openresty && \
echo "export PATH=$PATH:/opt/sh/openresty/bin" >> /etc/bashrc && \
dnf install -y luarocks lua-devel && \
dnf clean all


# then install apisix
WORKDIR /opt/sh

RUN wget https://downloads.apache.org/apisix/$version/apache-apisix-$download.tgz  && \
mkdir -p apisix && \
tar -xf apache-apisix-$download.tgz -C apisix && \
rm -rf apache-apisix-$download.tgz

WORKDIR /opt/sh/apisix

RUN make deps && \
echo "export PATH=$PATH:/opt/sh/apisix/bin" >> /etc/bashrc

# then install apisix dashboard


COPY source /opt/sh

CMD ["/usr/local/bin/dumb-init", "bash", "-vx", "/opt/sh/scripts/start.sh"]