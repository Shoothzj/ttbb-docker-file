#current version ttbb/postgre:nake
FROM ttbb/base

LABEL maintainer="shoothzj@gmail.com"

RUN dnf install -y https://download.postgresql.org/pub/repos/yum/reporpms/EL-8-x86_64/pgdg-redhat-repo-latest.noarch.rpm && \
dnf -qy module disable postgresql && \
dnf install -y postgresql13-server

COPY source /opt/sh

CMD ["/usr/local/bin/dumb-init", "bash", "-vx", "/opt/sh/scripts/start.sh"]