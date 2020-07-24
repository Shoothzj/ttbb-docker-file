#当前版本 ttbb/base:jdk11
FROM ttbb/base:latest

LABEL maintainer="shoothzj@gmail.com"
LABEL description="This is jdk11 base image"


RUN yum install -y java-11-openjdk-devel && \
    wget https://download-gcdn.ej-technologies.com/jprofiler/jprofiler_linux_11_1_3.rpm && \
    wget https://github.com/alibaba/arthas/releases/download/arthas-all-3.3.6/arthas-bin.zip && \
    mkdir -p /opt/sh/arthas && \
    unzip arthas-bin.zip -d /opt/sh/arthas && \
    rm -rf arthas-bin.zip && \
    rm -rf jprofiler_linux_11_1_3.rpm && \
    echo "alias arthas='java -jar /opt/sh/arthas/arthas-boot.jar'" >> /etc/bashrc && \
    java_path=`find / -name java 2>/dev/null|grep jdk|grep -v jre|awk '{sub(/.{9}$/,"")}1'` && \
    echo "export JAVA_HOME='$java_path'" >> /etc/bashrc && \
    yum clean all && \
    rm -rf /var/cache/yum