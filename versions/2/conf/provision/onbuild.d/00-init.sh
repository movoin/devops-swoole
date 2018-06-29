source /opt/docker/bin/functions.sh

# Create swoole.ini
copyFileTo "/opt/docker/etc/php/extends/swoole.ini" "/etc/php/conf.d/zz-swoole.ini"
