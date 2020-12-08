# ttbb/nginx:nake
FROM ttbb/base

LABEL maintainer="shoothzj@gmail.com"

WORKDIR /opt/sh

COPY source /opt/sh

RUN wget https://openresty.org/download/openresty-1.19.3.1.tar.gz && \
mkdir /opt/sh/openresty && \
tar -xf /opt/sh/openresty-1.19.3.1.tar.gz -C /opt/sh/openresty --strip-components 1 && \
rm -rf /opt/sh/openresty-1.19.3.1.tar.gz

WORKDIR /opt/sh/openresty

RUN yum install -y perl pcre-devel openssl-devel gcc curl
RUN ./configure && \
gmake && \
gmake install && \
echo "export PATH=$PATH:/usr/local/openresty/nginx/sbin" >> /etc/bashrc && \
echo "export PATH=$PATH:/usr/local/openresty/bin" >> /etc/bashrc && \
echo "chown -R sh:sh /usr/local/openresty" >> /etc/bashrc && \
rm -rf /opt/sh/openresty && \
cp /opt/sh/conf/nginx.conf /usr/local/openresty/nginx/conf

WORKDIR /usr/local/openresty