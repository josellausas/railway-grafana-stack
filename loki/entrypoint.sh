#!/bin/sh
set -e
# Railway volumes mount as root; chown so Loki (UID 10001) can write
chown -R 10001:10001 /loki
exec gosu 10001:10001 /usr/bin/loki "$@"
