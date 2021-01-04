# ttbb/nginx:openresty
# docker run -it ttbb/nginx:openresty bash
FROM ttbb/base

LABEL maintainer="shoothzj@gmail.com"

WORKDIR /opt/sh

COPY source /opt/sh

RUN wget https://openresty.org/download/openresty-1.19.3.1.tar.gz && \
mkdir /opt/sh/openresty && \
tar -xf /opt/sh/openresty-1.19.3.1.tar.gz -C /opt/sh/openresty --strip-components 1 && \
rm -rf /opt/sh/openresty-1.19.3.1.tar.gz

WORKDIR /opt/sh/openresty

RUN yum install -y perl pcre-devel openssl-devel gcc curl zlib-devel
RUN ./configure && \
gmake && \
gmake install && \
ln -s /usr/local/openresty/nginx/sbin/nginx /usr/bin/nginx && \
echo "export PATH=$PATH:/usr/local/openresty/bin" >> /etc/bashrc && \
echo "chown -R sh:sh /usr/local/openresty" >> /etc/bashrc && \
rm -rf /opt/sh/openresty && \
cp /opt/sh/conf/nginx.conf /usr/local/openresty/nginx/conf

WORKDIR /usr/local/openresty