# docker run -it -p 5601:5601 -p 9200:9200 -d ttbb/integrate:elasticsearch-kibana
# docker run -it -p 5601:5601 -p 9200:9200 --memory=”20g” -d ttbb/integrate:elasticsearch-kibana
FROM centos:8

COPY source /opt/sh/

RUN yum install -y net-tools lsof vim tcpdump openssh-clients nftables unzip bind-utils wget dstat && \
    wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.2.2/dumb-init_1.2.2_amd64 && \
    chmod +x /usr/local/bin/dumb-init && \
    echo "alias ll='ls -al'" >> /etc/bashrc && \
    echo "alias ..='cd ..'" >> /etc/bashrc && \
    echo "alias ...='cd ../..'" >> /etc/bashrc && \
    echo "alias tailf='tail -f'" >> /etc/bashrc && \
    echo "set nu" >> /etc/vimrc && \
    groupadd sh -g 1024 && \
    useradd -r -g sh sh -u 1024 -m -d /home/sh && \
    yum clean all && \
    rm -rf /var/cache/yum

RUN wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.8.0-linux-x86_64.tar.gz && \
mkdir /opt/sh/elasticsearch && \
tar -xf elasticsearch-7.8.0-linux-x86_64.tar.gz -C /opt/sh/elasticsearch --strip-components 1 && \
rm -rf /opt/sh/elasticsearch-7.8.0-linux-x86_64.tar.gz && \
wget https://artifacts.elastic.co/downloads/kibana/kibana-7.8.0-linux-x86_64.tar.gz && \
mkdir /opt/sh/kibana && \
tar -xf kibana-7.8.0-linux-x86_64.tar.gz -C /opt/sh/kibana --strip-components 1 && \
rm -rf kibana-7.8.0-linux-x86_64.tar.gz && \
chown -R sh:sh /opt/sh

CMD ["/usr/local/bin/dumb-init", "bash", "-vx","/opt/sh/scripts/start.sh"]

USER sh