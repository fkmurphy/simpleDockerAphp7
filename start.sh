#!/bin/sh
#configuracion de zona horaria
if [ "$CONTAINER_TIMEZONE" ]; then
    apk add tzdata
    cp /usr/share/zoneinfo/${CONTAINER_TIMEZONE} /etc/localtime && \
        echo "${CONTAINER_TIMEZONE}" >  /etc/timezone && \
        echo "Cambió zona horaria del contenedor: $CONTAINER_TIMEZONE"
fi

set -e
rm -f /usr/local/apache2/logs/httpd.pid

httpd -D FOREGROUND "$@"
