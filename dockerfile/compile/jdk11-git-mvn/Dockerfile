# docker run -it ttbb/compile:jdk11-git-mvn bash
FROM ttbb/compile:jdk11-git

LABEL maintainer="shoothzj@gmail.com"

ARG version=3.8.1
ARG download=3.8.1-bin

RUN wget https://mirror.linux-ia64.org/apache/maven/maven-3/$version/binaries/apache-maven-$download.tar.gz && \
tar -xf apache-maven-$download.tar.gz -C /root && \
mv /root/apache-maven-$version /root/maven && \
rm -rf /opt/sh/apache-maven-3.8.1-bin.tar.gz && \
echo 'export PATH="/root/maven/bin:$PATH"' >> /root/.bashrc && \
export PATH="/root/maven/bin:$PATH"