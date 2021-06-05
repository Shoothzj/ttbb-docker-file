# docker run -it ttbb/keepalived:nake bash
FROM ttbb/compile:c

LABEL maintainer="shoothzj@gmail.com"

WORKDIR /opt/sh

ARG version=2.2.2

RUN wget https://www.keepalived.org/software/keepalived-$version.tar.gz && \
mkdir /opt/sh/keepalived && \
tar -xf keepalived-$version.tar.gz -C /opt/sh/keepalived --strip-components 1 && \
rm -rf keepalived-$version.tar.gz && \
dnf install -y openssl-devel

WORKDIR /opt/sh/keepalived

RUN ./configure && \
make && \
make install