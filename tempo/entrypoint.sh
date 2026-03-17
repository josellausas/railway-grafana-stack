#!/bin/sh
set -e
# Railway volumes mount as root; chown so Tempo (UID 10001) can write
chown -R 10001:10001 /var/tempo
exec gosu 10001:10001 /tempo "$@"
