# docker run -it -p 30235:8080 ttbb/sentinel:nake bash
FROM ttbb/base:jdk8

RUN wget https://github.com/thingsboard/thingsboard/releases/download/v3.2/thingsboard-3.2.rpm  && \
rpm -ivh thingsboard-3.2.rpm && \
rm -rf thingsboard-3.2.rpm