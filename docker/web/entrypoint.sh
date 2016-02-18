#!/bin/bash
set -e

if [ -f /tmp/dummyfile ]; then
    echo -e "Mapping UIDs...\n"
    OLDUID=`id -u www-data`
    NEWUID=`stat -c '%u' /tmp/dummyfile`
    usermod -u $NEWUID www-data
    find /var/www -user $OLDUID -exec chown -h $NEWUID {} \;
fi

chown -R www-data:www-data /var/www
chown -R www-data:www-data /var/www_files
echo -e "UIDs Changed...\n"

exec "$@"
