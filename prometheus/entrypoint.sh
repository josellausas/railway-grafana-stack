#!/bin/sh
set -e
# Railway volumes mount as root; chown so Prometheus (nobody, UID 65534) can write
chown -R 65534:65534 /prometheus
exec gosu 65534:65534 /bin/prometheus "$@"
