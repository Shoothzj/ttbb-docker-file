#当前版本 ttbb/compile:jdk8
FROM ttbb/base:jdk8

LABEL maintainer="shoothzj@gmail.com"

RUN yum install -y maven git && \
    wget https://services.gradle.org/distributions/gradle-6.8.1-bin.zip && \
    unzip -d /opt/gradle gradle-6.8.1-bin.zip && \
    echo "export GRADLE_HOME='/opt/gradle/gradle-6.8.1'" >> /etc/bashrc && \
    ln -s /opt/gradle/gradle-6.8.1/bin/gradle /usr/bin/gradle && \
    rm -rf /opt/sh/gradle-6.8.1-bin.zip && \
    yum clean all && \
    rm -rf /var/cache/yum