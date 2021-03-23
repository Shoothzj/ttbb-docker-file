# docker run --volume="/var/run/docker.sock:/var/run/docker.sock:ro" --volume="/sys/fs/cgroup:/hostfs/sys/fs/cgroup:ro" --volume="/proc:/hostfs/proc:ro" --volume="/:/hostfs:ro" -it ttbb/metricbeat:nake
FROM ttbb/base

LABEL maintainer="shoothzj@gmail.com"

RUN wget https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-7.11.2-linux-x86_64.tar.gz && \
mkdir /opt/sh/metricbeat && \
tar -xf metricbeat-7.11.2-linux-x86_64.tar.gz -C /opt/sh/metricbeat --strip-components 1 && \
rm -rf /opt/sh/metricbeat-7.11.2-linux-x86_64.tar.gz

WORKDIR /opt/sh/metricbeat