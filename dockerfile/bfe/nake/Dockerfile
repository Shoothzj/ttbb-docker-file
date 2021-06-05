FROM ttbb/base

LABEL maintainer="shoothzj@gmail.com"

ARG version=1.1.0
ARG download=1.1.0_linux_amd64

RUN wget https://github.com/bfenetworks/bfe/releases/download/v$version/bfe_$download.tar.gz  && \
mkdir -p /opt/sh/bfe && \
tar -xf bfe_$download.tar.gz -C /opt/sh/bfe --strip-components 1 && \
rm -rf bfe_$download.tar.gz

WORKDIR /opt/sh/bfe