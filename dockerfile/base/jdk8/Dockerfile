#当前版本 ttbb/base:jdk8
FROM ttbb/base:latest

LABEL maintainer="shoothzj@gmail.com"
LABEL description="This is jdk8 base image"

RUN yum install -y java-1.8.0-openjdk-devel && \
    wget https://download-gcdn.ej-technologies.com/jprofiler/jprofiler_linux_11_1_3.rpm && \
    wget https://github.com/alibaba/arthas/releases/download/arthas-all-3.3.6/arthas-bin.zip && \
    mkdir -p /opt/sh/arthas && \
    unzip arthas-bin.zip -d /opt/sh/arthas && \
    rm -rf arthas-bin.zip && \
    rm -rf jprofiler_linux_11_1_3.rpm && \
    echo "alias arthas='java -jar /opt/sh/arthas/arthas-boot.jar'" >> /etc/bashrc && \
    echo "export JAVA_HOME='/usr/java/jdk1.8.0_241-amd64'" >> /etc/bashrc && \
    yum clean all && \
    rm -rf /var/cache/yum