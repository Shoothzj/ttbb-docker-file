#current version ttbb/postgre:nake
FROM ttbb/base:jdk14

LABEL maintainer="shoothzj@gmail.com"

RUN dnf -y install https://download.postgresql.org/pub/repos/yum/reporpms/EL-8-x86_64/pgdg-redhat-repo-latest.noarch.rpm && \
dnf -qy module disable postgresql && \
dnf -y install postgresql12-server postgresql12
