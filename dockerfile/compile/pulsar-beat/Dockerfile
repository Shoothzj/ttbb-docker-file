# 当前版本 ttbb/compile:pulsar-beat
# docker run -it ttbb/compile:pulsar-beat bash
FROM ttbb/base:goc

LABEL maintainer="shoothzj@gmail.com"

RUN echo "export GO_PATH='/root/go'" >> /etc/bashrc && \
    mkdir -p /root/go/src/github.com/streamnative && \
    cd /root/go/src/github.com/streamnative && \
    git clone https://github.com/streamnative/pulsar-beat-output

WORKDIR /root/go/src/github.com/streamnative/pulsar-beat-output