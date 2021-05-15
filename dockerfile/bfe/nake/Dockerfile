FROM ttbb/base:goc AS compiler

LABEL maintainer="shoothzj@gmail.com"

RUN git clone https://github.com/bfenetworks/bfe && \
cd bfe && \
dnf install -y glibc-static && \
make

FROM ttbb/base

COPY --from=compiler /opt/sh/bfe/output /opt/sh/bfe

WORKDIR /opt/sh/bfe