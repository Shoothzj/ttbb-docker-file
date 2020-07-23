FROM ttbb/base:jdk8

LABEL maintainer="shoothzj@gmail.com"

WORKDIR /opt/sh

COPY source /opt/sh

RUN yum install -y git npm && \
wget https://downloads.gradle.org/distributions/gradle-6.3-bin.zip && \
unzip -d /opt/gradle gradle-6.3-bin.zip && \
echo "export GRADLE_HOME='/opt/gradle/gradle-6.3'" >> /etc/bashrc && \
echo "export PATH=/opt/gradle/gradle-6.3/bin:${PATH}" >> /etc/bashrc && \
git clone https://github.com/apache/pulsar-manager.git && \
cd pulsar-manager && \
/opt/sh/pulsar-manager/gradlew build -x test && \
cd /opt/sh/pulsar-manager/build/distributions && \
unzip pulsar-manager.zip && \
cd /opt/sh/pulsar-manager/front-end && \
npm install chromedriver@2.46.0 --chromedriver_cdnurl=http://cdn.npm.taobao.org/dist/chromedriver && \
npm install --save && \
rm -rf /opt/sh/pulsar-manager/build/distributions/pulsar-manager.tar && \
rm -rf /opt/sh/pulsar-manager/build/distributions/pulsar-manager.zip

CMD ["/usr/local/bin/dumb-init", "bash", "-vx","/opt/sh/scripts/start.sh"]
