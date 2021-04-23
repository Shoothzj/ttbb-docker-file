# docker run -p 8080:8080 -p 11800:11800 -p 12800:12800 -d ttbb/skywalking:stand-alone
# winpty docker run -p 8080:8080 -p 11800:11800 -p 12800:12800 -d ttbb/skywalking:stand-alone
# docker run -e SW_STORAGE='elasticsearch7' -e SW_STORAGE_ES_CLUSTER_NODES='****:9200' -p 8080:8080 -p 11800:11800 -p 12800:12800 -d ttbb/skywalking:stand-alone
FROM ttbb/skywalking:nake

COPY source /opt/sh/skywalking/hzj

CMD ["/usr/local/bin/dumb-init", "bash", "-vx","/opt/sh/skywalking/hzj/scripts/start.sh"]