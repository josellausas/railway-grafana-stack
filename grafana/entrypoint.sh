#!/bin/sh
set -e
# Railway volumes mount as root; chown so Grafana (UID 472) can write
chown -R 472:472 /var/lib/grafana
exec gosu 472:472 /run.sh "$@"
