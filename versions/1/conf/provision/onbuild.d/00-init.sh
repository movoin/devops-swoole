###
 # Common Functions
 ##
source "$DOCKER_CONF_PATH/bin/functions.sh"

# Create swoole.ini
copyFileTo "$DOCKER_CONF_PATH/etc/php/extends/swoole.ini" "$PHP_INI_DIR/conf.d/zz-swoole.ini"

yum -y erase zlib-devel

/usr/local/bin/docker-clean
