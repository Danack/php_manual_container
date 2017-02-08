#!/bin/ash
#set -x
set -e

php_bin=$(which php7)
api_dir=/data/docs

touch /data/foo.txt
tail -f /data/foo.txt

# supervisord -c /etc/supervisord.conf