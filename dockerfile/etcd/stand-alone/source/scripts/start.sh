#!/usr/bin/env bash
/opt/sh/influxdb/usr/bin/influxd --config /opt/sh/influxdb/etc/influxdb/influxdb.conf

tail -f /dev/null