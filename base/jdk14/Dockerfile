#当前版本 ttbb/base:jdk14
FROM ttbb/base:latest

LABEL maintainer="shoothzj@gmail.com"
LABEL description="This is jdk14 base image"

COPY source /opt/sh/source

RUN rpm -i /opt/sh/source/jdk-14_linux-x64_bin.rpm && \
rpm -i /opt/sh/source/jprofiler_linux_11_1_2.rpm && \
wget https://github.com/alibaba/arthas/releases/download/arthas-all-3.2.0/arthas-3.2.0-bin.zip && \
mkdir -p /opt/sh/arthas && \
unzip arthas-3.2.0-bin.zip -d /opt/sh/arthas && \
rm -rf /opt/sh/source && \
rm -rf arthas-3.2.0-bin.zip && \
chown -R sh:sh /opt/sh && \
echo "alias arthas='java -jar /opt/sh/arthas/arthas-boot.jar'" >> /etc/bashrc && \
echo "export JAVA_HOME='/usr/java/jdk-14'" >> /etc/bashrc