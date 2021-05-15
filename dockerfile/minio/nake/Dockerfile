# docker run -it ttbb/minio:nake bash
FROM ttbb/base

LABEL maintainer="shoothzj@gmail.com"

WORKDIR /opt/sh/minio

RUN wget https://dl.min.io/server/minio/release/linux-amd64/minio && \
wget https://dl.min.io/client/mc/release/linux-amd64/mc && \
chmod +x /opt/sh/minio/minio && \
chmod +x /opt/sh/minio/mc && \
ln -s /opt/sh/minio/minio /usr/bin/minio && \
ln -s /opt/sh/minio/mc /usr/bin/mc

ENV MINIO_HOME /opt/sh/minio
