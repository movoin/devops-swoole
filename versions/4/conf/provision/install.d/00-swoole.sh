###
 # Common Functions
 ##
source "$DOCKER_CONF_PATH/bin/functions.sh"

cd /tmp

wget "$SWOOLE_URL"
tar xvf swoole-"$SWOOLE_VERSION".tgz
cd swoole-"$SWOOLE_VERSION"/
phpize
./configure \
	--enable-mysqlnd \
    --enable-sockets
make clean
make
make install

# Clean
rm -rf /tmp/swoole-"$SWOOLE_VERSION"/
rm -f /tmp/swoole-"$SWOOLE_VERSION".tgz
rm -f /tmp/package.xml
