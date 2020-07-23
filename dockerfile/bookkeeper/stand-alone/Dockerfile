#docker run -p 2181:2181 -p 5000-5010:5000-5010 -d ttbb/bookkeeper:stand-alone
FROM ttbb/bookkeeper:nake

RUN echo "advertisedAddress=127.0.0.1" >> /opt/sh/bookkeeper/conf/bk_server.conf

CMD ["/usr/local/bin/dumb-init", "/opt/sh/bookkeeper/bin/bookkeeper", "localbookie","10"]
