# docker run -p 9527:9527 -p 8080:8080
FROM ttbb/compile:jdk11-git

LABEL maintainer="shoothzj@gmail.com"

WORKDIR /opt/sh

RUN dnf install -y npm && \
git clone https://github.com/apache/pulsar-manager.git && \
cd pulsar-manager && \
/opt/sh/pulsar-manager/gradlew build -x test && \
cd /opt/sh/pulsar-manager/build/distributions && \
unzip pulsar-manager.zip && \
cd /opt/sh/pulsar-manager/front-end && \
npm install chromedriver@2.46.0 --chromedriver_cdnurl=http://cdn.npm.taobao.org/dist/chromedriver && \
npm install --save && \
# 开始清理
cd /opt/sh/pulsar-manager && \
rm -rf .asf.yaml && \
rm -rf .git && \
rm -rf .github && \
rm -rf .gitignore && \
rm -rf .gradle && \
rm -rf CONTRIBUTING.md && \
rm -rf Jenkinsfile && \
rm -rf LICENSE && \
rm -rf README.md && \
rm -rf VERSION && \
rm -rf build.gradle && \
rm -rf docs && \
rm -rf gradle && \
rm -rf gradle.properties && \
rm -rf gradlew && \
rm -rf gradlew.bat && \
rm -rf settings.gradle && \
rm -rf src && \
rm -rf /opt/sh/pulsar-manager/build/distributions/pulsar-manager.tar && \
rm -rf /opt/sh/pulsar-manager/build/distributions/pulsar-manager.zip && \
rm -rf /root/.gradle/caches && \
rm -rf /root/.gradle/wrapper/dits && \
dnf clean all

COPY source /opt/sh/pulsar-manager/hzj

WORKDIR /opt/sh/pulsar-manager

CMD ["/usr/local/bin/dumb-init", "bash", "-vx","/opt/sh/pulsar-manager/hzj/scripts/start.sh"]
