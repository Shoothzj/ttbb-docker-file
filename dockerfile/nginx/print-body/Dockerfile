FROM ttbb/nginx:openresty

COPY nginx.conf /usr/local/openresty/nginx/conf/nginx.conf

COPY source /opt/sh

CMD ["/usr/local/bin/dumb-init", "bash", "-vx","/opt/sh/scripts/start.sh"]