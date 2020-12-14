# docker run -p 8001:8001 -it ttbb/kong:nake bash
FROM ttbb/base

RUN curl -OL https://bintray.com/kong/kong-rpm/download_file?file_path=centos/8/kong-2.2.1.el8.amd64.rpm  && \
yum install -y kong-2.2.1.el8.amd64.rpm

WORKDIR /usr/local/kong