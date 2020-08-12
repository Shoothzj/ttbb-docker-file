#当前版本 ttbb/compile:jdk8
FROM ttbb/base:jdk8

LABEL maintainer="shoothzj@gmail.com"

RUN yum install -y maven && \
    wget https://services.gradle.org/distributions/gradle-6.6-bin.zip && \
    unzip -d /opt/gradle gradle-6.6-bin.zip && \
    echo "export GRADLE_HOME='/opt/gradle/gradle-6.6'" >> /etc/bashrc && \
    echo "export PATH=/opt/gradle/gradle-6.6/bin:${PATH}" >> /etc/bashrc && \
    yum clean all && \
    rm -rf /var/cache/yum