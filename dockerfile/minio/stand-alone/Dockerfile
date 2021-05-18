FROM ttbb/minio:nake

ENV MINIO_ROOT_USER=admin
ENV MINIO_ROOT_PASSWORD=password

COPY source /opt/sh/minio/hzj

CMD ["/usr/local/bin/dumb-init", "bash", "-vx", "/opt/sh/minio/hzj/scripts/start.sh"]