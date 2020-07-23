#当前版本 ttbb/base:jdk14
FROM ttbb/base:latest

RUN yum install -y yum-utils device-mapper-persistent-data lvm2 && \
yum-config-manager --add-repo https://repos.emqx.io/emqx-ce/redhat/centos/7/emqx-ce.repo && \
yum -y install emqx 

CMD ["/usr/local/bin/dumb-init", "emqx", "start"]