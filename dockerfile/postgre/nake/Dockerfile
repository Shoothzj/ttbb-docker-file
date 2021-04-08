# docker run -it ttbb/postgre:nake bash
FROM ttbb/base:centos

LABEL maintainer="shoothzj@gmail.com"

RUN dnf install -y https://download.postgresql.org/pub/repos/yum/reporpms/EL-8-x86_64/pgdg-redhat-repo-latest.noarch.rpm && \
dnf -qy module disable postgresql && \
dnf install -y postgresql13-server && \
dnf clean all