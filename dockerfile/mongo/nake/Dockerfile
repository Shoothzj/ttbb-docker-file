#current version ttbb/mongo:nake
FROM ttbb/base

LABEL maintainer="shoothzj@gmail.com"
LABEL description="Mongo nake image"

COPY mongodb-org-4.2.repo /etc/yum.repos.d/mongodb-org-4.2.repo

RUN yum install -y mongodb-org