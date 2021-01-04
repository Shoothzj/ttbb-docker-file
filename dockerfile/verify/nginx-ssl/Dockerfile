# docker run -it ttbb/verify:nginx-ssl bash
FROM ttbb/coredns:nake AS coredns

FROM ttbb/nginx:openresty

COPY source /opt/sh

COPY --from=coredns /opt/sh/coredns /opt/sh/coredns

WORKDIR /opt/sh