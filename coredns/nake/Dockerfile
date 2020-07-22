FROM ttbb/base AS compiler

LABEL maintainer="shoothzj@gmail.com"

RUN yum install -y golang git make && \
git clone https://github.com/coredns/coredns && \
cd coredns && \
make

FROM ttbb/base

COPY --from=compiler /opt/sh/coredns/coredns /opt/sh/coredns