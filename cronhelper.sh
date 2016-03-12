#!/bin/bash
echo "Adding to crontab: $1 /sbin/zpool scrub $2"
echo "$1 /sbin/zpool scrub $2" | crontab -

exec /usr/sbin/cron -f
